// src/app/empresas/[seo_url]/page.tsx
import React from 'react'
import { notFound } from 'next/navigation'
import { CompanyHeader } from '@/components/CompanyHeader'
import { ServicesList } from '@/components/ServicesList'
import { ReviewsList } from '@/components/ReviewsList'

type Company = {
  name: string
  location?: string
  contact_email?: string
  services: Array<{ name: string; description: string; price: number }>
  reviews: Array<{ content: string; rating: number; date: string }>
}

interface EmpresaPageProps {
  params: Promise<{ seo_url: string }>
}

export default async function EmpresaPage({
  params,
}: EmpresaPageProps) {
  const { seo_url } = await params

  // monta o header de Basic Auth
  const basic = Buffer.from(
    `${process.env.RAILS_API_USER}:${process.env.RAILS_API_PASS}`
  ).toString('base64')

  const res = await fetch(
    `http://localhost:3000/api/empresas/${encodeURIComponent(seo_url)}`,
    {
      cache: 'no-store',
      headers: {
        Authorization: `Basic ${basic}`,
      },
    }
  )

  if (res.status === 404) {
    // renderiza 404 do Next.js
    return notFound()
  }

  if (!res.ok) {
    // dispara erro genérico
    throw new Error(`Erro ao buscar empresa: ${res.status}`)
  }

  const company: Company = await res.json()

  return (
    <main style={{ padding: '1rem' }}>
      <CompanyHeader
        name={company.name}
        location={company.location}
        contact_email={company.contact_email}
      />

      <ServicesList services={company.services} />

      <ReviewsList reviews={company.reviews} />
    </main>
  )
}
