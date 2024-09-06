export declare type GpsIsEnabled = true;
export declare type GpsMessage = {
  status: 'enabled' | 'disabled';
};
export declare type EnabledMessage = 'GPS is enabled' | 'GPS is disabled';
export declare type GpsStatus = {
  gpsIsEnabled?: GpsIsEnabled;
  message?: EnabledMessage;
};
export interface capacitorGpsEnableIosPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
   /**
      * Check whether the location/gps is on or not
      *
      * @since 1.0.0
      */
  isGpsEnabled(options: { value: string }): Promise<String>;
  //  /**
  //    * Turn On Gps
  //    *
  //    * @since 1.0.0
  //    */
  //  tunOnGpsDialog(): Promise<void>;
}
