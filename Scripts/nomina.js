



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
    // campos que son de solo lectura
    //$('#DiasTrabajados').attr('readonly', true);
    //$('#DiasTrabajados').addClass("disabledField");
    //$('#RFC').attr('readonly', true);
    //$('#CURP').attr('readonly', true);
    //$('#NumSeguroSocial').attr('readonly', true);
    //$('#FechaInicioLaboral').attr('readonly', true);
    //$('#SalarioDiario').attr('readonly', true);
    //$('#SBC').attr('readonly', true);
    //$('#PSueldosSalariosRayasJornales').attr('readonly', true);
    //$('#PSueldoExcento').attr('readonly', true);
    //$('#PSueldoGravado').attr('readonly', true);
    //$('#PHorasExtrasDobles').attr('readonly', true);
    //$('#PHorasExtrasTriples').attr('readonly', true);
    //$('#PHorasExtras').attr('readonly', true);
    //$('#PHorasExtrasExcento').attr('readonly', true);
    //$('#PHorasExtrasGravado').attr('readonly', true);
    //$('#PTotalPercepciones').attr('readonly', true);
    //$('#DISR').attr('readonly', true);
    //$('#DSubsidio').attr('readonly', true);
    //$('#SeguridadSocial').attr('readonly', true);
    //$('#D1').attr('readonly', true);
    //$('#D2').attr('readonly', true);
    //$('#D3').attr('readonly', true);
    //$('#D4').attr('readonly', true);
    //$('#D5').attr('readonly', true);
    //$('#D6').attr('readonly', true);
    //$('#TotalDeduccion').attr('readonly', true);
    //$('#SalarioNeto').attr('readonly', true);
    //$('#DescuentoIncapacidad').attr('readonly', true);

    //$('#RFC').addClass("disabledField");
    //$('#CURP').addClass("disabledField");
    //$('#NumSeguroSocial').addClass("disabledField");
    //$('#FechaInicioLaboral').addClass("disabledField");
    //$('#SalarioDiario').addClass("disabledField");
    //$('#SBC').addClass("disabledField");

    //$('#PSueldosSalariosRayasJornales').addClass("disabledField");
    //$('#PSueldoExcento').addClass("disabledField");
    //$('#PSueldoGravado').addClass("disabledField");
    //$('#PHorasExtrasDobles').addClass("disabledField");
    //$('#PHorasExtrasTriples').addClass("disabledField");
    //$('#PHorasExtras').addClass("disabledField");
    //$('#PHorasExtrasExcento').addClass("disabledField");
    //$('#PHorasExtrasGravado').addClass("disabledField");
    //$('#PTotalPercepciones').addClass("disabledField");
    //$('#DISR').addClass("disabledField");
    //$('#DSubsidio').addClass("disabledField");
    //$('#SeguridadSocial').addClass("disabledField");
    //$('#D1').addClass("disabledField");
    //$('#D2').addClass("disabledField");
    //$('#D3').addClass("disabledField");
    //$('#D4').addClass("disabledField");
    //$('#D5').addClass("disabledField");
    //$('#D6').addClass("disabledField");
    //$('#TotalDeduccion').addClass("disabledField");
    //$('#SalarioNeto').addClass("disabledField");
    //$('#DescuentoIncapacidad').addClass("disabledField");



    // funciones en los campos que se usan para calcular
    $('#DiasPagar').focusout(function () {

        calculaDiasTrabajados();
       
    })
    $('#Incidencias').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#Ausentismo').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#HorasExtrasDobles').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#HorasExtrasTriples').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#PComisiones').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#POtros').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#PPrimavacacional').focusout(function () {

        calculaDiasTrabajados();

    })
    
    $('#Infonavit').focusout(function () {

        calculaDiasTrabajados();

    })
    $('#OtrasDeducciones').focusout(function () {

        calculaDiasTrabajados();

    })
   
    

});

function calculaDiasTrabajados() {

    // variables iniciales
    var ZonaSalarioMin = $('#ZonaSalarioMin').val();
    var HorasExtrasMaximas = 9;

    
    var SalarioDiario = parseFloat($('#SalarioDiario').val()); //C
    var SBC = parseFloat($('#SBC').val()); //D
    var DiasPagar = parseInt($('#DiasPagar').val()); // E
    var Incidencias = parseInt($('#Incidencias').val()); // F
    var Ausentismo = parseInt($('#Ausentismo').val()); // G
    var HorasExtrasDobles = parseFloat($('#HorasExtrasDobles').val()); //I
    var HorasExtrasTriples = parseFloat($('#HorasExtrasTriples').val()); //J
    var DiasTrabajados = parseFloat($('#DiasPagar').val() - parseInt($('#Incidencias').val()) - parseInt($('#Ausentismo').val()));
    var PSueldosSalariosRayasJornales = DiasTrabajados *SalarioDiario; //K
    var PSueldoExcento = 0; // L
    var PSueldoGravado = PSueldosSalariosRayasJornales; // M
    var PHorasExtrasDobles = SalarioDiario / 8 * HorasExtrasDobles * 2; //N
    var PHorasExtrasTriples = SalarioDiario / 8 * HorasExtrasTriples * 3; //O
    var PHorasExtras = PHorasExtrasDobles + PHorasExtrasTriples; //P
    var PComisiones = parseFloat($('#PComisiones').val()); //S
    var POtros = parseFloat($('#POtros').val()); //V
    var PPrimavacacional = parseFloat($('#PPrimavacacional').val()); //Y
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


    $('#DiasTrabajados').val(DiasTrabajados); // total de dias trabajados
    $('#PSueldosSalariosRayasJornales').val(PSueldosSalariosRayasJornales);
    $('#PSueldoExcento').val(PSueldoExcento);
    $('#PSueldoGravado').val(PSueldoGravado);
    $('#PHorasExtrasDobles').val(PHorasExtrasDobles);
    $('#PHorasExtrasTriples').val(PHorasExtrasTriples);
    $('#PHorasExtras').val(PHorasExtras);
    $('#PHorasExtrasExcento').val(PHorasExtrasExcento);
    $('#PHorasExtrasGravado').val(PHorasExtrasGravado);
   
    $('#DISR').val(DISR);
    $('#DSubsidio').val(DSubsidio);
    $('#SeguridadSocial').val(SeguridadSocial);
    $('#Infonavit').val(Infonavit);
    $('#OtrasDeducciones').val(OtrasDeducciones);
    
    $('#D1').val(D1);
    $('#D2').val(D2);
    $('#D3').val(D3);
    $('#D4').val(D4);
    $('#D5').val(D5);
    $('#D6').val(D6);

    $('#DescuentoIncapacidad').val(DescuentoIncapacidad);
    
    $('#PTotalPercepciones').val(PTotalPercepciones);
    $('#TotalDeduccion').val(TotalDeduccion);
    $('#SalarioNeto').val(SalarioNeto);
    

    
}