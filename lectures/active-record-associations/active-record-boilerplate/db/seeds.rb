# This is where you can create initial data for your app.

tex = Doctor.new(first_name: "Thiago", last_name: "Teixeira", specialty: "Neurologist")
tex.save

ciro = Intern.new(name: "Ciro Lima", doctor: tex)
ciro.save
# ciro = Intern.new(name: "Ciro Lima", doctor_id: tex.id)

chase = Intern.new(name: "Chase the coder", doctor: tex)
chase.save

elisa = Patient.new(name: "Elisa Nogueira", disease: "Tired", cured: 0)
elisa.save

derek = Patient.new(name: "Derek Ralet", disease: "Too much coffee", cured: 0)
derek.save

c1 = Consultation.new(patient: elisa, doctor: tex)
c1.save

c2 = Consultation.new(patient: derek, doctor: tex)
c2.save
