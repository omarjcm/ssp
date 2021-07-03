<%@ page contentType="text/html; charset=iso-8859-1"%>
<%@ page import="Sistfarm.*"%>
<%@ page import="javax.swing.*"%>
<%@ page import="java.sql.Date"%>
<%@ page import="java.util.*"%>
<html>
<jsp:useBean id="usuario" class="Sistfarm.Usuario"/>
<jsp:useBean id="horario1" class="Sistfarm.HorarioTrabajo"/>
<jsp:useBean id="horario2" class="Sistfarm.HorarioTrabajo"/>
<jsp:useBean id="horario3" class="Sistfarm.HorarioTrabajo"/>
<jsp:useBean id="horario4" class="Sistfarm.HorarioTrabajo"/>
<jsp:useBean id="horario5" class="Sistfarm.HorarioTrabajo"/>
<jsp:useBean id="horario6" class="Sistfarm.HorarioTrabajo"/>
<jsp:useBean id="horario7" class="Sistfarm.HorarioTrabajo"/>
<head>
<title>Registro de usuario</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<%
        usuario.setIdUsuario(Usuario.generarCodigoDeUsuario());
 	usuario.setTipoUsuario((Integer.valueOf(request.getParameter("cb_tipo"))).intValue());
        usuario.setSueldoUsuario((Double.valueOf(request.getParameter("txt_sueldo"))).doubleValue());
	usuario.setNombreUsuario(request.getParameter("txt_nombre"));
	usuario.setApellidoUsuario(request.getParameter("txt_apellido"));
	usuario.setCCUsuario(request.getParameter("txt_cedula"));
	usuario.setDireccionUsuario(request.getParameter("txt_direccion"));
	usuario.setSexoUsuario(request.getParameter("cb_sexo"));
	usuario.setNacionalidadUsuario(request.getParameter("txt_nacionalidad"));
        usuario.setTelefono1Usuario(request.getParameter("txt_fono1"));
        usuario.setTelefono2Usuario(request.getParameter("txt_fono2"));
        usuario.setUserUsuario(request.getParameter("txt_user"));
        usuario.setContraseniaUsuario(request.getParameter("txt_contrasenia"));
  
        //Obtener Fecha de ingreso
        String di = request.getParameter("txt_fidia");
        String mi = request.getParameter("txt_fimes");
        String ai = request.getParameter("txt_fianio");
        Date fingreso = Date.valueOf(ai+"-"+mi+"-"+di);
        usuario.setFechaIngresoUsuario(fingreso);
  
      //Obtener Fecha de nacimiento 
    String dn = request.getParameter("txt_fndia");
    String mn = request.getParameter("txt_fnmes");
    String an = request.getParameter("txt_fnanio");
    Date fnacimiento = Date.valueOf(an+"-"+mn+"-"+dn);
    usuario.setFechaNacimientoUsuario(fnacimiento);
    
    //Guardar horario trabajo
    LinkedList lsthorario = new LinkedList();
    horario1.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia1"));
    horario1.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi1"))).intValue());
    horario1.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf1"))).intValue());
    lsthorario.add(horario1);
    horario2.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia2"));
    horario2.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi2"))).intValue());
    horario2.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf2"))).intValue());
    lsthorario.add(horario2);
    horario3.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia3"));
    horario3.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi3"))).intValue());
    horario3.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf3"))).intValue());
    lsthorario.add(horario3);
    horario4.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia4"));
    horario4.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi4"))).intValue());
    horario4.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf4"))).intValue());
    lsthorario.add(horario4);
    horario5.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia5"));
    horario5.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi5"))).intValue());
    horario5.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf5"))).intValue());
    lsthorario.add(horario5);
    horario6.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia6"));
    horario6.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi6"))).intValue());
    horario6.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf6"))).intValue());
    lsthorario.add(horario6);
    horario7.setDiaSemanaHorarioTrabajo(request.getParameter("cb_dia7"));
    horario7.setHoraInicioHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hi7"))).intValue());
    horario7.setHoraFinHorarioTrabajo((Integer.valueOf(request.getParameter("cb_hf7"))).intValue());
    lsthorario.add(horario7);
    
    usuario.setHorarioTrabajoUsuario(lsthorario);
   if (Usuario.insertarUsuario(usuario)){
        JOptionPane.showMessageDialog(null, "Registro exitoso","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);
        %><jsp:forward page="ConsultarUsuario.jsp"/><%
    }else{ 
	JOptionPane.showMessageDialog(null, "Problemas con el registro, Inténtelo de nuevo","Mensaje del Sistema",JOptionPane.INFORMATION_MESSAGE);
	%><jsp:forward page="RegistrarUsuario.jsp"/><%
    }
%>
</body>
</html>