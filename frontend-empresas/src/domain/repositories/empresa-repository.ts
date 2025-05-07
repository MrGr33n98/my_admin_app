// src/domain/repositories/empresa-repository.ts

import { Empresa } from '../empresa';
import { Review } from '../empresa';
import { FaqItem } from '../empresa';

/** Contrato abstrato para buscar dados de Empresa */
export interface EmpresaRepository {
  /** Busca detalhes da empresa pelo SEO URL */
  getBySeoUrl(seoUrl: string): Promise<Empresa>;

  /** Busca avaliações paginadas */
  getReviews(empresaId: string, page: number, pageSize: number): Promise<Review[]>;

  /** Busca FAQs da empresa */
  getFaqs(empresaId: string): Promise<FaqItem[]>;
}
