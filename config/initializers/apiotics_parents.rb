Apiotics.configure do |config|
  config.parents = {"StarterKit"=>{"FourDigitDisplay"=>{}}, "MedicalDevice"=>{"Buzzer"=>{}, "HeartRateSensor"=>{}, "GalvanicSkinResponseSensor"=>{}, "FourDigitDisplay"=>{}}, "SecurityDevice"=>{"SoundSensor"=>{}, "VibrationSensor"=>{}, "MotionSensor"=>{}}, "MaintenanceDevice"=>{"ElectricitySensor"=>{}, "MagneticFieldSensor"=>{}, "VibrationSensor"=>{}}}
end