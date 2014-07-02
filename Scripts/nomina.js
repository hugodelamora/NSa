
$(function () {
    $("table").resizableColumns();
});

function trim(myString) {
    return myString.replace(/^\s+/g, '').replace(/\s+$/g, '')
}


$("#EmpleadoRFC").change(function () {
    $.ajax({
        type: "POST",
        url: "/Empleado/DetailsAjax/",
        data: { id: $('#EmpleadoRFC').val() },
        success: function (data) {
            asignaEmpleadoSeleccionado(data);
        }
    })
});


function asignaEmpleadoSeleccionado(data) {
    var empleado = JSON.parse(trim(data).replace(/&quot;/g, '"'))
    var i = 0;
   
    for (var prop in empleado) {
        if (empleado.hasOwnProperty(prop)) {
            $("#" + prop).val(empleado[prop]);
          
        }
    }
   

}

$(document).ready(function () {
    // funciones en los campos que se usan para calcular

    $('#empleados input').focusout(function (eventObject) {
        $.each(empleadosItems, function (index, value) {
            calculaSalario(value.codigo);
        });
    })
   
    
   
    $.each(empleadosItems, function (index, value) {
        calculaSalario(value.codigo);
    });
    

    // generamos los widwets iniciales como el del calendario

    var fechaInicio = $('#fechaInicioPeriodo').datepicker({
        format:"dd-mm-yyyy",
        onRender: function (date) {
            return '';
        }
    }).on('changeDate', function (ev) {
        var newDate = new Date(ev.date)
        newDate.setDate(newDate.getDate() + 1);
        $('#fechaFinPeriodo').datepicker('setStartDate', newDate);
        $('#fechaFinPeriodo').datepicker('update', newDate);
        fechaInicio.hide();
        $('#fechaFinPeriodo')[0].focus();
    }).data('datepicker');

    var fechaFin = $('#fechaFinPeriodo').datepicker({
        format: "dd-mm-yyyy"
    }).on('changeDate', function (ev2) {
        fechaFin.hide();
        var newDateFin = new Date(ev2.date)
        newDateFin.setDate(newDateFin.getDate());
        $('#fechaDePago').datepicker('update', newDateFin);
        actualizaDiasPago();
    }).data('datepicker');
    

    var fechaPago = $('#fechaDePago').datepicker({
        format: "dd-mm-yyyy"
    }).on('changeDate', function (ev) {
        fechaPago.hide();
    }).data('datepicker');


    // si es que viene una nomina ya
    if (nominasTimradas.length > 0){
        cargaNomina();
    }

});

function calculaSalario(empleado) {

    // variables iniciales
    var ZonaSalarioMin = $('#ZonaSalarioMin').val();
    var HorasExtrasMaximas = 9;

    
    var SalarioDiario = parseFloat($('#empleado_' + empleado).find(valSalarioDiario).text().trim()); //C
    var SBC = parseFloat($('#empleado_' + empleado).find(valSBC).text().trim()); //C
    var DiasPagar = parseInt($('#empleado_' + empleado).find(valDiasPagar).val()); // E
    var Incidencias = parseInt($('#empleado_' + empleado).find(valIncidencias).val()); // F
    var Ausentismo = parseInt($('#empleado_' + empleado).find(valAusentismo).val()); // G
    var HorasExtrasDobles = parseFloat($('#empleado_' + empleado).find(valHorasExtrasDobles).val()); //I
    var HorasExtrasTriples = parseFloat($('#empleado_' + empleado).find(valHorasExtrasTriples).val()); //J
    var DiasTrabajados = parseFloat(DiasPagar - Incidencias - Ausentismo);
    var PSueldosSalariosRayasJornales = DiasTrabajados *SalarioDiario; //K
    var PSueldoExcento = 0; // L
    var PSueldoGravado = PSueldosSalariosRayasJornales; // M
    var PHorasExtrasDobles = SalarioDiario / 8 * HorasExtrasDobles * 2; //N
    var PHorasExtrasTriples = SalarioDiario / 8 * HorasExtrasTriples * 3; //O
    var PHorasExtras = PHorasExtrasDobles + PHorasExtrasTriples; //P
    var PComisiones = parseFloat($('#empleado_' + empleado).find(valPComisiones).val()); //S
    var POtros = parseFloat($('#empleado_' + empleado).find(valPOtros).val()); //V
    var PPrimavacacional = parseFloat($('#empleado_' + empleado).find(valPPrimavacacional).val()); //Y
    // calculo PHorasExtrasExcento
    if (SalarioDiario <= ZonaSalarioMin) { //C10<=IMSS!$B$21
        //(MIN(I10,9)*C10/8*2)
        var horasExtras = HorasExtrasDobles;
        if (HorasExtrasMaximas > HorasExtrasDobles) { // validamos que no haya mas de 9 horas extras MIN(I10,9)
            horasExtras = HorasExtrasMaximas;
        }

        TotalHorasExtrasExcento = horasExtras * SalarioDiario / 8 * 2; //*C10/8*2
    } else { // MIN(REDONDEAR.MAS(E10/7,0)*IMSS!$B$21*5,MIN(I10,REDONDEAR.MAS(E10/7,0)*9)*C10/8*2*0.5)
        // menor de:
       
        //MIN(I10,REDONDEAR.MAS(E10/7,0)*9)*C10/8*2*0.5
        HorasExtrasDoblesValor = DiasPagar*9;
        if(HorasExtrasDobles<DiasPagar*9){
            HorasExtrasDoblesValor = HorasExtrasDobles;
        }
        TotalHorasExtrasExcento  = HorasExtrasDoblesValor*SalarioDiario/8*2*.5;
        if(( DiasPagar * ZonaSalarioMin * 5)<(HorasExtrasDoblesValor*SalarioDiario/8*2*.5)){ //MIN(I10,REDONDEAR.MAS(E10/7,0)*9)*C10/8*2*0.5
            TotalHorasExtrasExcento = DiasPagar * ZonaSalarioMin * 5
        }

    }
    
    var PHorasExtrasExcento = TotalHorasExtrasExcento; // Q 
    var PHorasExtrasGravado = PHorasExtrasDobles - PHorasExtrasExcento + PHorasExtrasTriples; //R
    var ComGravado = PComisiones; // U
    var OtrasGravado = POtros; // X

    var PrimVacExcento = ZonaSalarioMin * 15; // Z

    if (PPrimavacacional < PrimVacExcento) {
        PrimVacExcento = PPrimavacacional;
    }

    var PrimVacGravado = PPrimavacacional - PrimVacExcento //AA 

   
    var PTotalPercepciones = PSueldosSalariosRayasJornales + PHorasExtras + PComisiones + POtros + PPrimavacacional; //AB

    // calculo del ISR
   
    
    var TotalGravado = PSueldoGravado + PHorasExtrasGravado + ComGravado + OtrasGravado + PrimVacGravado //AP

    
    // aqui buscamos el TARMP
    var TARMPvalueLimiteInf = 0;
    var TARMPvalueTarifa = 0;
    var TARMPvalueCuotaFija = 0;


    TARMPItems.forEach(function (entry) {

        if (TotalGravado > entry.LimiteInferior) {
            TARMPvalueLimiteInf = entry.LimiteInferior;
            TARMPvalueTarifa = entry.Porcentajetarifa/100;
            TARMPvalueCuotaFija = entry.CuotaFija;
        }

    });

    // aqui buscamos el TARSP
    var TARSPvalueSubsidio = 0;



    TARSPItems.forEach(function (entry) {

        if (TotalGravado > entry.LimiteInferior) {
            TARSPvalueSubsidio = entry.Subsidio;
        }

    });
  
    var ISRoSubsidio = (TotalGravado - TARMPvalueLimiteInf) * TARMPvalueTarifa + parseInt(TARMPvalueCuotaFija) - parseInt(TARSPvalueSubsidio);
    var DISR = 0 // AC //MAX(0,((+AP10-BUSCARV(AP10,TARMP,1))*BUSCARV(AP10,TARMP,3)+BUSCARV(AP10,TARMP,2))-BUSCARV(AP10,TARSP,2))
    var DSubsidio = 0; // AD
    if (ISRoSubsidio < 0) {
        DSubsidio = ISRoSubsidio;
    } else {
        DISR = ISRoSubsidio;
    }
    
    
    var Infonavit = 0; // AK
    var OtrasDeducciones = 0; // AL
    // comenzamos a calcular los datos del IMSS
    //SI(C10<=IMSS!$B$21,0,(BUSCARV($B$2,TABLAT,AE$9+1)*SI($D10>BUSCARV($B$2,TOPESC,AE$9+1),BUSCARV($B$2,TOPESC,AE$9+1),$D10))*(REDONDEAR.MAS(E10,0)-(BUSCARV($AE$9,FALTAS,2)*$F10+BUSCARV($AE$9,FALTAS,3)*$G10)))

    var D1Valor = 0;
    if (SalarioDiario > parseFloat(ZonaSalarioMin)) { // si el salario diario es mayor que el salario minimo
        
        //(BUSCARV($B$2,TABLAT,AE$9+1)*SI($D10>BUSCARV($B$2,TOPESC,AE$9+1),BUSCARV($B$2,TOPESC,AE$9+1),$D10))*(REDONDEAR.MAS(E10,0)-(BUSCARV($AE$9,FALTAS,2)*$F10+BUSCARV($AE$9,FALTAS,3)*$G10))
        var TopValor = SBC;
        if (SBC > parseFloat(TOPESCItems[0].Tope1)) {
            TopValor =TOPESCItems[0].Tope1;
        }
        D1Valor = (parseFloat(TablaTsItems[0].TablaT1)/100) * TopValor * (DiasPagar-((1 * Incidencias) + (1 * Ausentismo)));

    }

    var D1 = D1Valor;
    var D2 = 0;
    //=SI(C10="",0,(SI($D10>(IMSS!$B$20*3),SI($D10>BUSCARV($B$2,TOPESC,AF$9+1),(BUSCARV($B$2,TOPESC,AF$9+1)-IMSS!$B$20*3)*BUSCARV($B$2,TABLAT,'3 Nómina'!AF$9+1),($D10-IMSS!$B$20*3)*BUSCARV($B$2,TABLAT,AF$9+1)),0))*(REDONDEAR.MAS(E10,0)-(BUSCARV($AF$9,FALTAS,2)*$F10+BUSCARV($AF$9,FALTAS,3)*$G10)))
    var D3Valor = 0;
    if (SBC > (parseFloat(ZonaSalarioMin) * 3)) { // si el salario diario es mayor que el salario minimo

        //SI($D10>BUSCARV($B$2,TOPESC,AF$9+1),(BUSCARV($B$2,TOPESC,AF$9+1)-IMSS!$B$20*3)*BUSCARV($B$2,TABLAT,'3 Nómina'!AF$9+1),($D10-IMSS!$B$20*3)*BUSCARV($B$2,TABLAT,AF$9+1))
        var TopValor3 = (SBC - (parseFloat(ZonaSalarioMin) * 3)) * (parseFloat(TablaTsItems[0].TablaT3) / 100); //($D10-IMSS!$B$20*3)*BUSCARV($B$2,TABLAT,AF$9+1)
        if (SBC > parseFloat(TOPESCItems[0].Tope3)) {
            //(BUSCARV($B$2,TOPESC,AF$9+1)-IMSS!$B$20*3)*BUSCARV($B$2,TABLAT,'3 Nómina'!AF$9+1)
            TopValor3 = (TOPESCItems[0].Tope3 - (parseFloat(ZonaSalarioMin) * 3)) * (parseFloat(TablaTsItems[0].TablaT3) / 100);
        }
        //(REDONDEAR.MAS(E10,0)-(BUSCARV($AF$9,FALTAS,2)*$F10+BUSCARV($AF$9,FALTAS,3)*$G10)))
        D3Valor = TopValor3 * DiasPagar - ((1 * Incidencias) + (1 * Ausentismo));
    }

    var D3 = D3Valor;

    var D4Valor = 0;
    if (SalarioDiario > parseFloat(ZonaSalarioMin)) { // si el salario diario es mayor que el salario minimo

        //(BUSCARV($B$2,TABLAT,AE$9+1)*SI($D10>BUSCARV($B$2,TOPESC,AE$9+1),BUSCARV($B$2,TOPESC,AE$9+1),$D10))*(REDONDEAR.MAS(E10,0)-(BUSCARV($AE$9,FALTAS,2)*$F10+BUSCARV($AE$9,FALTAS,3)*$G10))
        var TopValor4 = SBC;
        if (SBC > parseFloat(TOPESCItems[0].Tope4)) {
            TopValor4 = TOPESCItems[0].Tope4;
        }
        D4Valor = (parseFloat(TablaTsItems[0].TablaT4) / 100) * TopValor4 * (DiasPagar - ((1 * Incidencias) + (1 * Ausentismo)));

    }

    var D4 = D4Valor;

    var D5Valor = 0;
    if (SalarioDiario > parseFloat(ZonaSalarioMin)) { // si el salario diario es mayor que el salario minimo

        //(BUSCARV($B$2,TABLAT,AE$9+1)*SI($D10>BUSCARV($B$2,TOPESC,AE$9+1),BUSCARV($B$2,TOPESC,AE$9+1),$D10))*(REDONDEAR.MAS(E10,0)-(BUSCARV($AE$9,FALTAS,2)*$F10+BUSCARV($AE$9,FALTAS,3)*$G10))
        var TopValor5 = SBC;
        if (SBC > parseFloat(TOPESCItems[0].Tope5)) {
            TopValor5 = TOPESCItems[0].Tope5;
        }
        D5Valor = (parseFloat(TablaTsItems[0].TablaT5) / 100) * TopValor5 * (DiasPagar - ((1 * Incidencias) + (1 * Ausentismo)));

    }

    var D5 = D5Valor;


    var D6Valor = 0;
    if (SalarioDiario > parseFloat(ZonaSalarioMin)) { // si el salario diario es mayor que el salario minimo

        //(BUSCARV($B$2,TABLAT,AE$9+1)*SI($D10>BUSCARV($B$2,TOPESC,AE$9+1),BUSCARV($B$2,TOPESC,AE$9+1),$D10))*(REDONDEAR.MAS(E10,0)-(BUSCARV($AE$9,FALTAS,2)*$F10+BUSCARV($AE$9,FALTAS,3)*$G10))
        var D6Valor = SBC;
        if (SBC > parseFloat(TOPESCItems[0].Tope6)) {
            D6Valor = TOPESCItems[0].Tope6;
        }
        D6Valor = (parseFloat(TablaTsItems[0].TablaT6) / 100) * D6Valor * (DiasPagar - ((1 * Incidencias) + (1 * Ausentismo)));

    }

    var D6 = D6Valor;
    var SeguridadSocial = D1+D3+D4+D5+D6; //AJ // aqui nos quedamos
    // incapacidades

    DescuentoIncapacidad = Incidencias * SalarioDiario;
    PTotalPercepciones = PSueldosSalariosRayasJornales + PHorasExtras + PComisiones + POtros + PPrimavacacional; // aqui nos quedamos =K10+P10+S10+V10+Y10 // AB
    TotalDeduccion = DISR + DSubsidio + SeguridadSocial + Infonavit + OtrasDeducciones; //AC10+AD10+AJ10+AK10+AL10
    SalarioNeto = PTotalPercepciones - TotalDeduccion; // +AB10-AC10-AD10-AJ10-AK10-AL10
    //totales


    

    $('#empleado_' + empleado).find(valDiasTrabajados).text(DiasTrabajados)
    $('#empleado_' + empleado).find(valPSueldosSalariosRayasJornales).text(PSueldosSalariosRayasJornales)
    $('#empleado_' + empleado).find(valPSueldoExcento).text(PSueldoExcento)
    $('#empleado_' + empleado).find(valPSueldoGravado).text(PSueldoGravado)
    $('#empleado_' + empleado).find(valPHorasExtrasDobles).text(PHorasExtrasDobles)
    $('#empleado_' + empleado).find(valPHorasExtrasTriples).text(PHorasExtrasTriples)
    $('#empleado_' + empleado).find(valPHorasExtras).text(PHorasExtras)
    $('#empleado_' + empleado).find(valPHorasExtrasExcento).text(PHorasExtrasExcento)
    $('#empleado_' + empleado).find(valPHorasExtrasGravado).text(PHorasExtrasGravado)

    $('#empleado_' + empleado).find(valDISR).text(DISR)
    $('#empleado_' + empleado).find(valDSubsidio).text(DSubsidio)
    $('#empleado_' + empleado).find(valSeguridadSocial).text(SeguridadSocial)
    $('#empleado_' + empleado).find(valInfonavit).text(Infonavit)
    $('#empleado_' + empleado).find(valOtrasDeducciones).text(OtrasDeducciones)
 
    $('#empleado_' + empleado).find(valD1).text(D1)
    $('#empleado_' + empleado).find(valD2).text(D2)
    $('#empleado_' + empleado).find(valD3).text(D3)
    $('#empleado_' + empleado).find(valD4).text(D4)
    $('#empleado_' + empleado).find(valD5).text(D5)
    $('#empleado_' + empleado).find(valD6).text(D6)

    $('#empleado_' + empleado).find(valD6).text(DescuentoIncapacidad)

    $('#empleado_' + empleado).find(valPTotalPercepciones).text(PTotalPercepciones)
    $('#empleado_' + empleado).find(valTotalDeduccion).text(TotalDeduccion)
    $('#empleado_' + empleado).find(valSalarioNeto).text(SalarioNeto)

}

function timbraNomina() {

    $("#numeroPeriodo").removeClass("input-validation-error")
    $("#fechaInicioPeriodo").removeClass("input-validation-error")
    $("#fechaFinPeriodo").removeClass("input-validation-error")
    $("#tipoPeriodo").removeClass("input-validation-error")
    $("#fechaDePago").removeClass("input-validation-error")
    $("#formaDePago").removeClass("input-validation-error")

    // primero validamos que vengan los datos del periodo completos
    NumeroPeriodo = $("#numeroPeriodo").val();
    FechaInicioPeriodo = $("#fechaInicioPeriodo").val();
    FechaFinPeriodo = $("#fechaFinPeriodo").val();
    TipoPeriodo = $("#tipoPeriodo").val();
    FechaDePago = $("#fechaDePago").val();
    FormaDePago = $("#formaDePago").val();

    errores = new Array()
    // validamos los campos que no son selects
    if (NumeroPeriodo == "") {
        errores.push(0);
        $("#NumeroPeriodo").addClass("input-validation-error");
    }

    if (FechaInicioPeriodo == "") {
        errores.push(1);
        $("#fechaInicioPeriodo").addClass("input-validation-error");
    }
    if (FechaFinPeriodo == "") {
        errores.push(2);
        $("#fechaFinPeriodo").addClass("input-validation-error");
    }
    if (TipoPeriodo == "") {
        errores.push(3);
        $("#tipoPeriodo").addClass("input-validation-error");
    }
    if (FechaDePago == "") {
        errores.push(4);
        $("#fechaDePago").addClass("input-validation-error");
    }
    if (FormaDePago == "") {
        errores.push(5);
        $("#formaDePago").addClass("input-validation-error");
    }

    if (FechaInicioPeriodo > FechaFinPeriodo) {
        // 
        errores.push(6);
        $("#fechaFinPeriodo").removeClass("input-validation-error")
    }

 
    if (errores.length>0) {
        // aqui mostramos los errores

        var ErrorMsg = "";
        errores.forEach(function (entry) {
            ErrorMsg += messages["crearNominas"][entry] + "<br/>";
        });
        showAlert(ErrorMsg);
        return false;

    }
    $('#modalLoading').modal('show');
    var totalEmpleados = $('#empleados tbody tr').length;
    var empleadoSeleccionado = "";
    var nominaCompleta = Array();
    for (var i = 0; i < totalEmpleados;i++){
        empleadoSeleccionado = $('#empleados tbody tr')[i].id;

        
        if ($('#' + empleadoSeleccionado).find(valStatus).html().trim() == "") {
          
        



        var nomina = new Object();

        nomina.DiasTrabajados = parseInt($('#' + empleadoSeleccionado).find(valDiasTrabajados).text().trim());

        //percepciones
        nomina.PSueldosSalariosRayasJornales = parseFloat($('#' + empleadoSeleccionado).find(valPSueldosSalariosRayasJornales).text().trim());
        nomina.PSueldoExcento = parseFloat($('#' + empleadoSeleccionado).find(valPSueldoExcento).text().trim());
        nomina.PSueldoGravado = parseFloat($('#' + empleadoSeleccionado).find(valPSueldoGravado).text().trim());
        nomina.PHorasExtrasDobles = parseFloat($('#' + empleadoSeleccionado).find(valPHorasExtrasDobles).text().trim());
        nomina.PHorasExtrasTriples = parseFloat($('#' + empleadoSeleccionado).find(valPHorasExtrasTriples).text().trim());
        nomina.PHorasExtras = parseFloat($('#' + empleadoSeleccionado).find(valPHorasExtras).text().trim());
        nomina.PHorasExtrasExcento = parseFloat($('#' + empleadoSeleccionado).find(valPHorasExtrasExcento).text().trim());
        nomina.PHorasExtrasGravado = parseFloat($('#' + empleadoSeleccionado).find(valPHorasExtrasGravado).text().trim());

        nomina.SalarioDiario = parseFloat($('#' + empleadoSeleccionado).find(valSalarioDiario).text().trim());
        nomina.SBC = parseFloat($('#' + empleadoSeleccionado).find(valSBC).text().trim());
        nomina.DiasPagar = parseInt($('#' + empleadoSeleccionado).find(valDiasPagar).val());
        nomina.Incidencias = parseInt($('#' + empleadoSeleccionado).find(valIncidencias).val());
        nomina.Ausentismo = parseInt($('#' + empleadoSeleccionado).find(valAusentismo).val());
        nomina.HorasExtrasDobles = parseFloat($('#' + empleadoSeleccionado).find(valHorasExtrasDobles).val());
        nomina.HorasExtrasTriples = parseFloat($('#' + empleadoSeleccionado).find(valHorasExtrasTriples).val());
        nomina.PComisiones = parseFloat($('#' + empleadoSeleccionado).find(valPComisiones).val());
        nomina.POtros = parseFloat($('#' + empleadoSeleccionado).find(valPOtros).val());
        nomina.PPrimavacacional = parseFloat($('#' + empleadoSeleccionado).find(valPPrimavacacional).val());

        //Deducciones
        nomina.DISR = parseFloat($('#' + empleadoSeleccionado).find(valDISR).text().trim());
        nomina.DSubsidio = parseFloat($('#' + empleadoSeleccionado).find(valDSubsidio).text().trim());
        nomina.D1 = parseFloat($('#' + empleadoSeleccionado).find(valD1).text().trim());
        nomina.D2 = parseFloat($('#' + empleadoSeleccionado).find(valD2).text().trim());
        nomina.D3 = parseFloat($('#' + empleadoSeleccionado).find(valD3).text().trim());
        nomina.D4 = parseFloat($('#' + empleadoSeleccionado).find(valD4).text().trim());
        nomina.D5 = parseFloat($('#' + empleadoSeleccionado).find(valD5).text().trim());
        nomina.D6 = parseFloat($('#' + empleadoSeleccionado).find(valD6).text().trim());
        nomina.SeguridadSocial = parseFloat($('#' + empleadoSeleccionado).find(valSeguridadSocial).text().trim());
        nomina.Infonavit = parseFloat($('#' + empleadoSeleccionado).find(valInfonavit).text().trim());
        nomina.OtrasDeducciones = parseFloat($('#' + empleadoSeleccionado).find(valOtrasDeducciones).text().trim());

        nomina.DescuentoIncapacidad = parseInt($('#' + empleadoSeleccionado).find(valDescuentoIncapacidad).val().trim());

        nomina.PTotalPercepciones = parseFloat($('#' + empleadoSeleccionado).find(valPTotalPercepciones).text().trim());
        nomina.TotalDeduccion = parseFloat($('#' + empleadoSeleccionado).find(valTotalDeduccion).text().trim());
        nomina.SalarioNeto = parseFloat($('#' + empleadoSeleccionado).find(valSalarioNeto).text().trim());

        nomina.RFC = $('#' + empleadoSeleccionado).find(valRFC).text().trim();
        nomina.CURP = $('#' + empleadoSeleccionado).find(valCURP).text().trim();
        nomina.NumSeguroSocial = $('#' + empleadoSeleccionado).find(valNumSeguroSocial).text().trim();
        nomina.FechaInicioLaboral = $('#' + empleadoSeleccionado).find(valFechaInicioLaboral).text().trim();
        
        nomina.User = parseInt($('#' + empleadoSeleccionado).find(valUser).text().trim());
        nomina.Empresa = parseInt($('#' + empleadoSeleccionado).find(valEmpresa).text().trim());


       // nomina.User = parseInt($('#empleados tbody tr')[0].id.trim().replace("empleado_", ""));




        nominaCompleta.push(nomina);

        }
    }

    // lo mandamos al controlador por medio de ajax

    var formDataGetView = "nominaCompleta=" + JSON.stringify(nominaCompleta);
    formDataGetView += "&NumeroPeriodo=" + NumeroPeriodo;
    formDataGetView += "&FechaInicioPeriodo=" + FechaInicioPeriodo;
    formDataGetView += "&FechaFinPeriodo=" + FechaFinPeriodo;
    formDataGetView += "&TipoPeriodo=" + TipoPeriodo;
    formDataGetView += "&FechaDePago=" + FechaDePago;
    formDataGetView += "&FormaDePago=" + FormaDePago;

    formDataGetView += "&";
    formDataGetView += "__RequestVerificationToken=" + $("input[name='__RequestVerificationToken']").val();
    $.ajax({
        url: "/NominaCFDI/CreateMasivo/",
        data: formDataGetView,
        type: "POST",
        success: function (data) {

            // obtenemos el objecto General

            var Respuesta = JSON.parse(trim(data).replace(/&quot;/g, '"'));
           

            // validamos si hay errores
            var Errores = JSON.parse(trim(Respuesta["Errores"]).replace(/&quot;/g, '"'));

            if (isEmpty(Errores)) {
                $('#modalLoading').modal('hide');
                $("#TimbrarNomina").prop('disabled', true);
            } else {
                // vemos donde jodidos escribimos los errores que hay
                var ErrorMsg = "";
                $.each(Errores, function (index, value) {
                    ErrorMsg += "<b>"+ index + "</b> : " + value + "<br/>";
                });
                $('#modalLoading').modal('hide');
                showAlert(ErrorMsg)

            }
            // cremoa el objetos de la respuesta de los timbres para asignarlos a las filas correspondientes
            var Timbres = JSON.parse(trim(Respuesta["Timbres"]).replace(/&quot;/g, '"'));

            if (Timbres.length > 0) {
                // aqui comenzamos
                $("#numeroPeriodo").prop('disabled', true); // deshabilitamos el numero de periodo para que no lo puedan modificar
                $("#NuevaNomina").prop('disabled', false);
                $("#EnviarRecibos").prop('disabled', false);
                Timbres.forEach(function (timbre) {

                    // tenemos que tener bien definidos los metodos que mandan hacer cosas como bajar XML, PDF y enviar emilio
                    $('#empleado_' + timbre.Empleado).find(valStatus).append('<a href="alert(\'timbre.uuid\')"> <span class="glyphicon glyphicon-ok" title="Documento timbrado"></span></a>');
                    $('#empleado_' + timbre.Empleado).find(valPDF).append('<a href="#"> <span class="glyphicon glyphicon-qrcode" title="Bajar PDF"></span></a>');
                    $('#empleado_' + timbre.Empleado).find(valXML).append('<a href="#"> <span class="glyphicon glyphicon-file" title="Bajar XML"></span></a>');
                    $('#empleado_' + timbre.Empleado).find(valemail).append('<a href="#"> <span class="glyphicon glyphicon-envelope" title="Enviar correo electrónico"></span></a>');


                });
            }
        }
    });



}

function recuperarNomina() {
    var numeroPeriodoVal = parseInt( $("#numeroPeriodo").val());
   
    if(!isNaN(numeroPeriodoVal)){
        // recargamos la pagina enviando el parametro del periodo de nomina
        location.href = window.location.protocol + "//" +window.location.host + "/NominaCFDI/CreateNomina/" + numeroPeriodoVal;

    } else {
        //alertamos que el periodo no es valido
        showAlert(messages["crearNominas"][9]);
       
    }


}


function cargaNomina() {

    // esta función es por si tenemos ya la nomina recuperada

    
    $.each(nominasTimradas, function (index, value) {
        
        var empleadoid = value.User;
        


        
        $('#empleado_' + empleadoid).find(valDiasPagar).val(value.DiasPagar);
        $('#empleado_' + empleadoid).find(valIncidencias).val(value.Incidencias);
        $('#empleado_' + empleadoid).find(valAusentismo).val(value.Ausentismo);

        $('#empleado_' + empleadoid).find(valHorasExtrasDobles).val(value.HorasExtrasDobles);
        $('#empleado_' + empleadoid).find(valHorasExtrasTriples).val(value.HorasExtrasTriples);

        $('#empleado_' + empleadoid).find(valPComisiones).val(value.PComisiones);
        $('#empleado_' + empleadoid).find(valPOtros).val(value.POtros);
        $('#empleado_' + empleadoid).find(valPPrimavacacional).val(value.PPrimavacacional);


        calculaSalario(empleadoid)


    });

}

function nuevaNomina() {

    if (validarSiNoTimbrado()){
        bootbox.confirm(messages["crearNominas"][8], function (result) {
            if (result) {
                nuevaNominaConfirmado();
            }
        });
    } else {
        nuevaNominaConfirmado();
    }
   
  

}

function nuevaNominaConfirmado() {

    NumeroPeriodo = $("#numeroPeriodo").val();
    var formDataGetView = "&NumeroPeriodo=" + NumeroPeriodo;
    formDataGetView += "&";
    formDataGetView += "__RequestVerificationToken=" + $("input[name='__RequestVerificationToken']").val();
    $.ajax({
        url: "/NominaCFDI/NuevaNomina/",
        data: formDataGetView,
        type: "POST",
        success: function (data) {

            // obtenemos el objecto General
            if ((trim(data).replace(/&quot;/g, '"'))=="True") {

                bootbox.alert(messages["crearNominas"][7], function (result) {
                    location.reload();
                });
            } else {

                location.reload();
            }

        }
    });

}

function validarSiNoTimbrado() {
    var estatus = false;
    var totalEmpleados = $('#empleados tbody tr').length;
    for (var i = 0; i < totalEmpleados; i++) {
        empleadoSeleccionado = $('#empleados tbody tr')[i].id;
        if ($('#' + empleadoSeleccionado).find(valStatus).text().trim() == "") {
            estatus = true;
        }
    }

    return estatus;

}

function actualizaDiasPago() {
    var diasDeDiferencia = diasDiferencia()
    // recorremos a los usuarios y le ponemos el valor en los dua a pagar
    var totalEmpleados = $('#empleados tbody tr').length;
    var empleadoSeleccionado = "";

    for (var i = 0; i < totalEmpleados; i++) {
        empleadoSeleccionado = $('#empleados tbody tr')[i].id;
        $('#' + empleadoSeleccionado).find(valDiasPagar).val(diasDeDiferencia);
        calculaSalario(parseInt(empleadoSeleccionado.replace("empleado_", "")));
    }
}

function diasDiferencia() {

    var fechaInicioPeriodoVal = ($('#fechaInicioPeriodo').datepicker().val()).split("-");
    var fechaFinPeriodoVal = ($('#fechaFinPeriodo').datepicker().val()).split("-");
    var fechaInicioFormat = new Date(fechaInicioPeriodoVal[2], fechaInicioPeriodoVal[1], fechaInicioPeriodoVal[0]);
    var fechaFinFormat = new Date(fechaFinPeriodoVal[2], fechaFinPeriodoVal[1], fechaFinPeriodoVal[0]);
    return DateDiff.inDays(fechaInicioFormat, fechaFinFormat);
    
}

var DateDiff = {

    inDays: function (d1, d2) {
        var t2 = d2.getTime();
        var t1 = d1.getTime();

        return parseInt((t2 - t1) / (24 * 3600 * 1000));
    }
}
