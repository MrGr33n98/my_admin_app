// src/domain/empresa.ts
export interface Review {
  id: string;
  author: string;
  city: string;
  date: Date;
  rating: number;
  type: string;
  title: string;
  body: string;
  tags: string[];
}

export class Empresa {
  constructor(
    public id: string,
    public name: string,
    public seoUrl: string,
    public bannerUrl: string,
    public description: string,
    public totalSystems: number,
    public satisfiedClients: number,
    public faqs: { q: string; a: string }[],
    public reviews: Review[] = []
  ) {}

  averageRating(): number {
    if (this.reviews.length === 0) return 0;
    const sum = this.reviews.reduce((acc, r) => acc + r.rating, 0);
    return Math.round(sum / this.reviews.length);
  }
}
