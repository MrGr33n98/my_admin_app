'use client'
import { FC, useState } from 'react'
import { Review } from '@/domain/empresa'

interface ReviewsTabProps { reviews?: Review[] }

const ReviewsTab: FC<ReviewsTabProps> = ({ reviews = [] }) => {
  const [visibleCount, setVisibleCount] = useState(4)
  return (
    <div className="tab-content" id="reviews-tab">
      <section className="space-y-6">
        <h2 className="text-2xl font-bold text-blue-800">Avaliações de Clientes</h2>
        <div className="grid md:grid-cols-2 gap-6">
          {reviews.slice(0, visibleCount).map(r => (
            <div key={r.id} className="bg-white p-6 rounded-xl shadow-sm border border-gray-200">
              {/* renderize aqui cada campo de `r` */}
            </div>
          ))}
        </div>
        {visibleCount < reviews.length && (
          <div className="text-center mt-4">
            <button
              onClick={() => setVisibleCount(c => c + 4)}
              className="border border-blue-600 text-blue-600 hover:bg-blue-50 px-6 py-3 rounded-lg font-medium"
            >
              Carregar mais avaliações
            </button>
          </div>
        )}
      </section>
    </div>
  )
}

export default ReviewsTab
