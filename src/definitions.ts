export declare type GpsIsEnabled = true;
export declare type GpsMessage = {
  status: 'enabled' | 'disabled';
};
export declare type EnabledMessage = 'GPS is enabled' | 'GPS is disabled';

export interface capacitorGpsEnableIosPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
   /**
      * Check whether the location/gps is on or not
      *
      * @since 1.0.0
      */
  isGpsEnabled(): Promise<GpsIsEnabled>;
  //  /**
  //    * Turn On Gps
  //    *
  //    * @since 1.0.0
  //    */
  //  tunOnGpsDialog(): Promise<void>;
}
