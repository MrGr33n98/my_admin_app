// src/components/empresa/Header.tsx
import React from 'react'

const Header: React.FC = () => (
  <header className="relative">
    <div className="relative h-96 overflow-hidden">
      <img
        src="https://images.unsplash.com/photo-1509391366360-2e959784a276?ixlib=rb-4.0.3&auto=format&fit=crop&w=2070&q=80"
        alt="Painéis solares em telhado residencial"
        className="w-full h-full object-cover"
      />
      <div className="absolute inset-0 bg-blue-900/50" />
    </div>
    <div className="absolute top-4 left-4">
      <div className="bg-white p-4 rounded-lg shadow-lg flex items-center">
        <div className="w-16 h-16 bg-blue-600 rounded-full flex items-center justify-center text-white mr-4">
          <i className="fas fa-solar-panel text-2xl" />
        </div>
        <div>
          <h1 className="text-xl font-bold text-blue-800">SolarTech</h1>
          <div className="flex items-center text-yellow-400">
            {'★'.repeat(4)}☆{/* ou use ícones FontAwesome */}
            <span className="ml-2 text-gray-700 text-sm">4.8 (257 avaliações)</span>
          </div>
        </div>
      </div>
    </div>
    <div className="absolute bottom-0 left-0 right-0 bg-white/90 py-6 px-8">
      <div className="max-w-6xl mx-auto flex flex-wrap items-center justify-between">
        <div className="mb-4 md:mb-0">
          <h2 className="text-2xl font-bold text-blue-900">Energia Solar Residencial</h2>
          <p className="text-blue-800">Economize até 95% na sua conta de luz</p>
        </div>
        <div className="flex space-x-4">
          <button className="btn-primary">
            <i className="fas fa-phone-alt mr-2" /> Fale com um especialista
          </button>
          <button className="btn-secondary">
            <i className="fas fa-calculator mr-2" /> Simule seu sistema
          </button>
        </div>
      </div>
    </div>
  </header>
)

export default Header
