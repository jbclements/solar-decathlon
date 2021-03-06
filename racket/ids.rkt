#lang typed/racket/base

(provide ID ID?)

;; PUT ALL OF THE LEGAL DEVICE IDS HERE:

(define-type ID
  (U "s-temp-out"
     "s-temp-bed"
     "s-temp-bath"
     "s-temp-lr"
     "s-temp-kit"
     "s-hum-out"
     "s-hum-bed"
     "s-hum-bath"
     "s-hum-lr"
     "s-hum-kit"
     "s-occ-bed"
     "s-occ-mech"
     "s-occ-lr"
     "s-occ-bath"
     "s-amb-bed"
     "s-amb-mech"
     "s-amb-lr"
     "s-amb-bath"
     "c-light-bed"
     "c-light-mech"
     "c-light-lr"
     "c-light-bath"
     "c-light-kit"
     "s-elec-used-laundry"
     "s-elec-used-dishwasher"
     "s-elec-used-refrigerator"
     "s-elec-used-induction-stove"
     "s-elec-used-ewh-solar-water-heater"
     "s-elec-used-kitchen-receps-1"
     "s-elec-used-kitchen-receps-2"
     "s-elec-used-living-receps"
     "s-elec-used-dining-receps-1"
     "s-elec-used-dining-receps-2"
     "s-elec-used-bathroom-receps"
     "s-elec-used-bedroom-receps-1"
     "s-elec-used-bedroom-receps-2"
     "s-elec-used-mechanical-receps"
     "s-elec-used-entry-receps"
     "s-elec-used-exterior-receps"
     "s-elec-used-grey-water-pump-recep"
     "s-elec-used-black-water-pump-recep"
     "s-elec-used-thermal-loop-pump-recep"
     "s-elec-used-water-supply-pump-recep"
     "s-elec-used-water-supply-booster-pump-recep"
     "s-elec-used-vehicle-charging-recep"
     "s-elec-used-heat-pump-recep"
     "s-elec-used-air-handler-recep"
     "s-elec-gen-main-array"
     "s-elec-gen-bifacial"
     "s-temp-testing-blackhole"
     "s-temp-testing-empty"
     "s-light-entry-bookend-1A"
     "s-light-chandelier-1B"
     "s-light-tv-light-2A"
     "s-light-kitchen-uplight-3A"
     "s-light-under-counter-3B"
     "s-light-pendant-bar-lights-3C"
     "s-light-bathroom-ambient-4A"
     "s-light-mirror-4B"
     "s-light-flexspace-uplight-5A"
     "s-light-flexspace-cabinet-5B"
     "s-light-bedroom-uplight-6A"
     "s-light-bedroom-cabinet-6B"
     "s-light-porch-lights-8A"
     "s-light-uplights-and-pot-lights-8B"))


(define-predicate ID? ID)