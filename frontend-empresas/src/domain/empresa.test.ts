// src/tests/domain/empresa.test.ts
import { Empresa, Review } from '../../domain/empresa';

describe('Empresa (domínio)', () => {
  it('averageRating() deve retornar 0 se não houver reviews', () => {
    const emp = new Empresa('1', 'SolarTech', 'solartech', '', '', 0, 0, []);
    expect(emp.averageRating()).toBe(0);
  });

  it('averageRating() calcula corretamente a média', () => {
    const reviews: Review[] = [
      { id: 'r1', author: 'A', city: 'X', date: new Date(), rating: 5, type: '', title: '', body: '', tags: [] },
      { id: 'r2', author: 'B', city: 'Y', date: new Date(), rating: 3, type: '', title: '', body: '', tags: [] },
    ];
    const emp = new Empresa('1', 'SolarTech', 'solartech', '', '', 8, 2, [], reviews);
    expect(emp.averageRating()).toBe(4);
  });
});
