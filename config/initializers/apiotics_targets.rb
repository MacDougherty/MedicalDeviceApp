require 'simple_form'
Apiotics.configure do |config|
  config.targets = {"StarterKit"=>{"FourDigitDisplay"=>["clock", "display", "port_number"]}, "MedicalDevice"=>{"Buzzer"=>["buzzer", "port_number"], "HeartRateSensor"=>["data", "port_number"], "GalvanicSkinResponseSensor"=>["data", "port_number"], "FourDigitDisplay"=>["clock", "display", "port_number"]}, "SecurityDevice"=>{"SoundSensor"=>["port_number"], "VibrationSensor"=>["port_number"], "MotionSensor"=>["port_number"]}, "MaintenanceDevice"=>{"ElectricitySensor"=>[], "MagneticFieldSensor"=>["port_number"], "VibrationSensor"=>["port_number"]}}
end