import { registerPlugin } from '@capacitor/core';

import type { capacitorGpsEnableIosPlugin } from './definitions';

const capacitorGpsEnableIos = registerPlugin<capacitorGpsEnableIosPlugin>(
  'capacitorGpsEnableIos',
  {
    web: () => import('./web').then(m => new m.capacitorGpsEnableIosWeb()),
  },
);

export * from './definitions';
export { capacitorGpsEnableIos };
