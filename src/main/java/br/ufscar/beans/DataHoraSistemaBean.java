package br.ufscar.beans;

import java.text.SimpleDateFormat;
import java.util.Date; 

public class DataHoraSistemaBean
{
   private String formato;  //O formato da data e da hora do sistema
   private String dataHora; //A data e a hora do sistema no formato especificado na aplicação
   
    /**
     * @return the formato
     */
    public String getFormato() {
        return formato;
    }

    /**
     * @param formato the formato to set
     */
    public void setFormato(String formato) {
        this.formato = formato;
    }

    /**
     * @return the dataHora
     */
    public String getDataHora()
    {
        SimpleDateFormat dataFormatada = new SimpleDateFormat(formato);
        setDataHora(dataFormatada.format(new Date(System.currentTimeMillis())));
        return dataHora;
    }

    /**
     * @param dataHora the dataHora to set
     */
    public void setDataHora(String dataHora) {
        this.dataHora = dataHora;
    }
}
