'use client'
import { FC, useState } from 'react'
import { FaqItem } from '@/domain/empresa'

interface FaqTabProps { items?: FaqItem[] }

const FaqTab: FC<FaqTabProps> = ({ items = [] }) => {
  const [openIndex, setOpenIndex] = useState<number>(0)
  return (
    <div className="tab-content" id="faq-tab">
      <section className="space-y-6">
        <h2 className="text-2xl font-bold text-blue-800">Perguntas Frequentes</h2>
        <div className="bg-white rounded-xl shadow-sm border border-gray-200">
          {items.map((f, i) => (
            <div key={i} className={`border-b ${openIndex === i ? 'active' : ''}`}>
              <button
                className="w-full flex justify-between items-center p-6 hover:bg-gray-50"
                onClick={() => setOpenIndex(openIndex === i ? -1 : i)}
              >
                <h3 className="font-medium">{f.q}</h3>
                <i className={`fas fa-chevron-down transition-transform ${openIndex === i ? 'rotate-180' : ''}`} />
              </button>
              {openIndex === i && (
                <div className="px-6 pb-6 text-gray-700" dangerouslySetInnerHTML={{ __html: f.a }} />
              )}
            </div>
          ))}
        </div>
      </section>
    </div>
  )
}

export default FaqTab
