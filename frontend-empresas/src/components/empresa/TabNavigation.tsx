'use client'
import { FC, useState } from 'react'

const tabs = [
  { id: 'about',    label: 'Sobre' },
  { id: 'services', label: 'Serviços' },
  { id: 'portfolio',label: 'Portfólio' },
  { id: 'reviews',  label: 'Avaliações' },
  { id: 'faq',      label: 'FAQ' },
  { id: 'contact',  label: 'Contato' },
] as const

export default function TabNavigation() {
  const [active, setActive] = useState<typeof tabs[number]['id']>('about')

  return (
    <nav className="mb-8 border-b border-gray-200">
      <div className="flex overflow-x-auto">
        {tabs.map(tab => (
          <button
            key={tab.id}
            onClick={() => setActive(tab.id)}
            className={`
              px-6 py-4 font-medium whitespace-nowrap border-b-2 transition-colors
              ${active === tab.id
                ? 'text-blue-600 border-blue-600'
                : 'text-gray-500 border-transparent hover:text-blue-600 hover:border-blue-200'}
            `}
          >
            {tab.label}
          </button>
        ))}
      </div>
      {/* Esconde todas e só mostra a ativa */}
      {tabs.map(tab => (
        <div
          key={tab.id}
          className={`tab-content ${active === tab.id ? 'active' : ''}`}
          id={`${tab.id}-tab`}
        />
      ))}
    </nav>
  )
}
