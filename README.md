Aplicación tutorial para Ruby Perú

# Planteamiento Inicial

Como usuarios queremos entrar al sistema usando nuestra cuenta de github
  Armar CRUD de Ususarios con
    email
    clave
  Integrar OmniAuth
  Configurar integración con GitHub
  Armar pantalla de bienvenida
  Armar endpoint que cree la sesión
  Armar logout

Como usuarios logueados queremos agregar servidores a monitorear
  Armar CRUD para Server con los siguientes parámetros
    Nombre
    Host
    Puerto
    Periodicidad de Chequeo

Como usuario espero recibir notificaciones si hay fallas
  Armar CRUD de Notificaciones
    Fecha/Hora
    Descripcion
  Armar un script que haga los chequeos y genere notificaciones
  Armar un observer que envíe mails cuando se generen notificaciones

Como usuario quiero poder confirmar lectura de las notificaciones
  Armar mecanismo de confirmación
