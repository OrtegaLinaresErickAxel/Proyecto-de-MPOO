/*
 Ortega Linares Erick Axel
 Rosete Ambriz Jesùs Jair
 Tavera Pèrez Pedro Alejandro
*/

import SwiftUI
import MapKit


struct MenuPrincipal: ViewModifier{
    func body(content: Content) -> some View{
        content
            .foregroundColor(.black)
            .padding(.all)
            .background(Color.white)
            .cornerRadius(10)
    }
}
extension View{
    func menuPrincipal() -> some View{
        self.modifier(MenuPrincipal())
    }
    
}


struct Formulario: ViewModifier{
    func body(content: Content) -> some View{
        content
            .disableAutocorrection(true)
            .padding(8)
            .font(.headline)
            .background(Color.gray.opacity(0.3))
            .cornerRadius(6)
            .padding(.top, 40)
            .padding(.horizontal, 20)
    }
}
extension View{
    func formulario() -> some View{
        self.modifier(Formulario())
    }
}


struct Device{
    let name: String
    let systemImage: String
}


let arrayofDoctors = [
    Device(name: "Doctor 1", systemImage: "person.text.rectangle"),
    Device(name: "Doctor 2", systemImage: "person.text.rectangle"),
    Device(name: "Doctor 3", systemImage: "person.text.rectangle"),
    Device(name: "Doctor 4", systemImage: "person.text.rectangle"),
    Device(name: "Doctor 5", systemImage: "person.text.rectangle")]


struct ContentView: View {
    @State var nombredeldoctor: String = ""
    @State var especialidad: String = ""
    @State var telefono: String = ""
    @State var direccion: String = ""
    @State var currentDate: Date = Date()
    @State var hourmedicine: Date = Date()
    
    @State var nombredeldoctor2: String = ""
    @State var especialidad2: String = ""
    @State var telefono2: String = ""
    @State var direccion2: String = ""
    @State var currentDate2: Date = Date()
    @State var hourmedicine2: Date = Date()
    
    @State var nombredeldoctor3: String = ""
    @State var especialidad3: String = ""
    @State var telefono3: String = ""
    @State var direccion3: String = ""
    @State var currentDate3: Date = Date()
    @State var hourmedicine3: Date = Date()
    
    @State var nombredeldoctor4: String = ""
    @State var especialidad4: String = ""
    @State var telefono4: String = ""
    @State var direccion4: String = ""
    @State var currentDate4: Date = Date()
    @State var hourmedicine4: Date = Date()
    
    @State var nombredeldoctor5: String = ""
    @State var especialidad5: String = ""
    @State var telefono5: String = ""
    @State var direccion5: String = ""
    @State var currentDate5: Date = Date()
    @State var hourmedicine5: Date = Date()
    @State var isPresented: Bool = false
    @AppStorage("appStorageName") var appStorageName: String = ""
    @AppStorage("appStorageEspecialidad") var appStorageEspecialidad: String = ""
    @AppStorage("appStorageTelefono") var appStorageTelefono: String = ""
    @AppStorage("appStorageDireccion") var appStorageDireccion: String = ""
    
    @AppStorage("appStorageName2") var appStorageName2: String = ""
    @AppStorage("appStorageEspecialidad2") var appStorageEspecialidad2: String = ""
    @AppStorage("appStorageTelefono2") var appStorageTelefono2: String = ""
    @AppStorage("appStorageDireccion2") var appStorageDireccion2: String = ""
    
    @AppStorage("appStorageName3") var appStorageName3: String = ""
    @AppStorage("appStorageEspecialidad3") var appStorageEspecialidad3: String = ""
    @AppStorage("appStorageTelefono3") var appStorageTelefono3: String = ""
    @AppStorage("appStorageDireccion3") var appStorageDireccion3: String = ""
    
    @AppStorage("appStorageName4") var appStorageName4: String = ""
    @AppStorage("appStorageEspecialidad4") var appStorageEspecialidad4: String = ""
    @AppStorage("appStorageTelefono4") var appStorageTelefono4: String = ""
    @AppStorage("appStorageDireccion4") var appStorageDireccion4: String = ""
    
    @AppStorage("appStorageName5") var appStorageName5: String = ""
    @AppStorage("appStorageEspecialidad5") var appStorageEspecialidad5: String = ""
    @AppStorage("appStorageTelefono5") var appStorageTelefono5: String = ""
    @AppStorage("appStorageDireccion5") var appStorageDireccion5: String = ""
    @StateObject var locationViewModel = LocationViewModel()
    
    
    var body: some View {
        NavigationView{
            ZStack{Color.cyan.ignoresSafeArea()
                VStack(spacing:100){
                    NavigationLink("contacto con doctores".uppercased(), destination: NavigationView{
                        List{
                            HStack{
                                Image(systemName: "person.text.rectangle")
                                NavigationLink("Doctor 1",destination: {
                                    VStack(spacing:-35){
                                        Text("Informacion")
                                            .bold()
                                            .font(.headline)
                                        TextField("Nombre del doctor", text: $nombredeldoctor)
                                            .formulario()
                                        TextField("Especialidad", text: $especialidad)
                                            .formulario()
                                        TextField("Telefono", text: $telefono)
                                            .formulario()
                                        TextField("Direccion", text: $direccion)
                                            .formulario()
                                        DatePicker("Recordatorio de consultas",
                                                    selection: $currentDate,
                                                    in: Date()...,
                                                    displayedComponents: .date)
                                        .formulario()
                                        DatePicker("Hora de medicina",
                                                    selection: $hourmedicine,
                                                    in: Date()...,
                                                    displayedComponents: .hourAndMinute)
                                        .formulario()
                                    }
                                    Spacer()
                                    Button("Guardar"){
                                        appStorageName = nombredeldoctor
                                        appStorageEspecialidad = especialidad
                                        appStorageTelefono = telefono
                                        appStorageDireccion = direccion
                                    }
                                    .onAppear{
                                        nombredeldoctor = appStorageName
                                        especialidad = appStorageEspecialidad
                                        telefono = appStorageTelefono
                                        direccion = appStorageDireccion
                                    }
                                    Spacer()
                                    })
                                }
                            HStack{
                                Image(systemName: "person.text.rectangle")
                                NavigationLink("Doctor 2",destination: {
                                    VStack(spacing:-35){
                                        Text("Informacion")
                                            .bold()
                                            .font(.headline)
                                        TextField("Nombre del doctor", text: $nombredeldoctor2)
                                            .formulario()
                                        TextField("Especialidad", text: $especialidad2)
                                            .formulario()
                                        TextField("Telefono", text: $telefono2)
                                            .formulario()
                                        TextField("Direccion", text: $direccion2)
                                            .formulario()
                                        DatePicker("Recordatorio de consultas",
                                                    selection: $currentDate2,
                                                    in: Date()...,
                                                    displayedComponents: .date)
                                        .formulario()
                                        DatePicker("Hora de medicina",
                                                    selection: $hourmedicine2,
                                                    in: Date()...,
                                                    displayedComponents: .hourAndMinute)
                                        .formulario()
                                    }
                                    Spacer()
                                    Button("Guardar"){
                                        appStorageName2 = nombredeldoctor2
                                        appStorageEspecialidad2 = especialidad2
                                        appStorageTelefono2 = telefono2
                                        appStorageDireccion2 = direccion2
                                    }
                                    .onAppear{
                                        nombredeldoctor2 = appStorageName2
                                        especialidad2 = appStorageEspecialidad2
                                        telefono2 = appStorageTelefono2
                                        direccion2 = appStorageDireccion2
                                    }
                                    Spacer()
                                    })
                                }
                            HStack{
                                Image(systemName: "person.text.rectangle")
                                NavigationLink("Doctor 3",destination: {
                                    VStack(spacing:-35){
                                        Text("Informacion")
                                            .bold()
                                            .font(.headline)
                                        TextField("Nombre del doctor", text: $nombredeldoctor3)
                                            .formulario()
                                        TextField("Especialidad", text: $especialidad3)
                                            .formulario()
                                        TextField("Telefono", text: $telefono3)
                                            .formulario()
                                        TextField("Direccion", text: $direccion3)
                                            .formulario()
                                        DatePicker("Recordatorio de consultas",
                                                    selection: $currentDate3,
                                                    in: Date()...,
                                                    displayedComponents: .date)
                                        .formulario()
                                        DatePicker("Hora de medicina",
                                                    selection: $hourmedicine3,
                                                    in: Date()...,
                                                    displayedComponents: .hourAndMinute)
                                        .formulario()
                                    }
                                    Spacer()
                                    Button("Guardar"){
                                        appStorageName3 = nombredeldoctor3
                                        appStorageEspecialidad3 = especialidad3
                                        appStorageTelefono3 = telefono3
                                        appStorageDireccion3 = direccion3
                                    }
                                    .onAppear{
                                        nombredeldoctor3 = appStorageName3
                                        especialidad3 = appStorageEspecialidad3
                                        telefono3 = appStorageTelefono3
                                        direccion3 = appStorageDireccion3
                                    }
                                    Spacer()
                                    })
                                }
                            HStack{
                                Image(systemName: "person.text.rectangle")
                                NavigationLink("Doctor 4",destination: {
                                    VStack(spacing:-35){
                                        Text("Informacion")
                                            .bold()
                                            .font(.headline)
                                        TextField("Nombre del doctor", text: $nombredeldoctor4)
                                            .formulario()
                                        TextField("Especialidad", text: $especialidad4)
                                            .formulario()
                                        TextField("Telefono", text: $telefono4)
                                            .formulario()
                                        TextField("Direccion", text: $direccion4)
                                            .formulario()
                                        DatePicker("Recordatorio de consultas",
                                                    selection: $currentDate4,
                                                    in: Date()...,
                                                    displayedComponents: .date)
                                        .formulario()
                                        DatePicker("Hora de medicina",
                                                    selection: $hourmedicine4,
                                                    in: Date()...,
                                                    displayedComponents: .hourAndMinute)
                                        .formulario()
                                    }
                                    Spacer()
                                    Button("Guardar"){
                                        appStorageName4 = nombredeldoctor4
                                        appStorageEspecialidad4 = especialidad4
                                        appStorageTelefono4 = telefono4
                                        appStorageDireccion4 = direccion4
                                    }
                                    .onAppear{
                                        nombredeldoctor4 = appStorageName4
                                        especialidad4 = appStorageEspecialidad4
                                        telefono4 = appStorageTelefono4
                                        direccion4 = appStorageDireccion4
                                    }
                                    Spacer()
                                    })
                                }
                            HStack{
                                Image(systemName: "person.text.rectangle")
                                NavigationLink("Doctor 5",destination: {
                                    VStack(spacing:-35){
                                        Text("Informacion")
                                            .bold()
                                            .font(.headline)
                                        TextField("Nombre del doctor", text: $nombredeldoctor5)
                                            .formulario()
                                        TextField("Especialidad", text: $especialidad5)
                                            .formulario()
                                        TextField("Telefono", text: $telefono5)
                                            .formulario()
                                        TextField("Direccion", text: $direccion5)
                                            .formulario()
                                        DatePicker("Recordatorio de consultas",
                                                    selection: $currentDate5,
                                                    in: Date()...,
                                                    displayedComponents: .date)
                                        .formulario()
                                        DatePicker("Hora de medicina",
                                                    selection: $hourmedicine5,
                                                    in: Date()...,
                                                    displayedComponents: .hourAndMinute)
                                        .formulario()
                                    }
                                    Spacer()
                                    Button("Guardar"){
                                        appStorageName5 = nombredeldoctor5
                                        appStorageEspecialidad5 = especialidad5
                                        appStorageTelefono5 = telefono5
                                        appStorageDireccion5 = direccion5
                                    }
                                    .onAppear{
                                        nombredeldoctor5 = appStorageName5
                                        especialidad5 = appStorageEspecialidad5
                                        telefono5 = appStorageTelefono5
                                        direccion5 = appStorageDireccion5
                                    }
                                    Spacer()
                                    })
                                }
                            }
                            .navigationTitle("Mis Doctores")
                        })
                        .padding(.all)
                        .menuPrincipal()
                    NavigationLink("Hospitales cercanos".uppercased(), destination: VStack{
                        Map(coordinateRegion: $locationViewModel.userLocation, showsUserLocation: true)
                            .ignoresSafeArea()
                        if locationViewModel.userHasLocation{
                            Text("Localizacion Aceptada")
                                .bold()
                                .padding(.top, 12)
                            Link("Pulsa para cambiar la autorizacion de Localizacion", destination: URL(string:UIApplication.openSettingsURLString)!)
                                .padding(32)
                        }else{
                            Text("Localizacion NO Aceptada")
                                .bold()
                                .padding(.top, 12)
                            Link("Pulsa para aceptar la autorizacion de Localizacion", destination: URL(string: UIApplication.openSettingsURLString)!)
                                .padding(32)
                        }
                    }
                )
                            .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/50.0/*@END_MENU_TOKEN@*/)
                            .menuPrincipal()
                            
                    NavigationLink("farmacias".uppercased(), destination: NavigationView{
                                List{
                                    NavigationLink("Ubicacion", destination: VStack{
                                        Map(coordinateRegion: $locationViewModel.userLocation, showsUserLocation: true)
                                            .ignoresSafeArea()
                                        if locationViewModel.userHasLocation{
                                            Text("Localizacion Aceptada")
                                                .bold()
                                                .padding(.top, 12)
                                            Link("Pulsa para cambiar la autorizacion de Localizacion", destination: URL(string:UIApplication.openSettingsURLString)!)
                                                .padding(32)
                                        }else{
                                            Text("Localizacion NO Aceptada")
                                                .bold()
                                                .padding(.top, 12)
                                            Link("Pulsa para aceptar la autorizacion de Localizacion", destination: URL(string: UIApplication.openSettingsURLString)!)
                                                .padding(32)
                                        }
                                    })
                                    NavigationLink("Medicamentos", destination: VStack{
                                        Text("Elige la farmacia de tu preferencia:")
                                            .multilineTextAlignment(.center)
                                            .bold()
                                        
                                            .font(.largeTitle)
                                        TabView{
                                            ZStack{
                                                Image("farmacia1")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width:350)
                                                Link("                            ", destination: URL(string: "https://farmaciasdesimilares.com/#!/")!)
                                            }
                                            ZStack{
                                                Image("farmacia2")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width:350)
                                                Link("                            ", destination: URL(string: "https://www.fahorro.com/?gclid=Cj0KCQjw7uSkBhDGARIsAMCZNJs9QTdp9qyxi9gtv9-1QzExmN2R7w3axk7hpKlGhApPF1bkQ7dgIF8aAjm2EALw_wcB")!)
                                            }
                                            ZStack{
                                                Image("farmacia3")
                                                Link("                            ", destination: URL(string:"https://www.farmaciasanpablo.com.mx/?gclid=Cj0KCQjw7uSkBhDGARIsAMCZNJu8sejH052_mhGrAAma_GxUsojmFWGDxiwDvbvOEDFU7SfFq2R_yooaAu2aEALw_wcB")!)
                                            }
                                            ZStack{
                                                Image("farmacia4")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width:350)
                                                Link("                             ", destination: URL(string: "https://www.farmaciasguadalajara.com")!)
                                            }
                                            ZStack{
                                                Image("farmacia5")
                                                Link("                             ", destination: URL(string: "https://www.benavides.com.mx")!)
                                            }
                                        }
                                        .frame(height: 400)
                                        .tabViewStyle(PageTabViewStyle())
                                        .background(Color.cyan)
                                    })
                                }
                            })
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .frame(width: /*@START_MENU_TOKEN@*/200.0, height: 50.0/*@END_MENU_TOKEN@*/)
                            .menuPrincipal()
                            
                    Link("Llamar al: \n911", destination: URL(string: "tel:911")!)
                            .fontWeight(.bold)
                            .frame(width: 150)
                            .foregroundColor(.black)
                            .padding(.all)
                            .background(Color.red)
                            .cornerRadius(10)
                }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
/*
 1.- El Link para marcar, por lo que investigue, no funciona en simuladores, pero en teoria al correr la aplicacion en un celular deberia funcionar sin problema.
 2.- No supe como usar el AppStorage para las variables de tipo Date, para que se guardaran los valores al cerrar la aplicaciòn.
 */
