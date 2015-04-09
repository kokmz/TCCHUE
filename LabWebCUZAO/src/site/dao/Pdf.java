package site.dao;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import site.vo.Exame;
import site.vo.Examelab;
import site.vo.FluxoExames;
import site.vo.Paciente;
import site.vo.Status;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.List;
 

public class Pdf extends Dao{
	
	public java.util.List<FluxoExames> buscaExame(String data_inicio, String data_fim)
	{
		Connection conn = null;
		java.util.List<FluxoExames> fluxo = new ArrayList<FluxoExames>();

		try
		{
			conn = getConnection();

			String sql = "select te.exame_nome, p.nome_paciente, DATE_FORMAT(e.data_exame, '%d/%m/%Y') data_exame, se.status_nome "
					+ "from exame e, tabela_Exame te, paciente p, status_exame se  "
					+ "where te.id_tabelaExame = e.id_exame "
					+ "and p.id_paciente = e.id_paciente "
					+ "and e.id_status = se.id_Status "
					+ "and e.data_exame between '" + data_inicio + "' and '"+ data_fim + "'";        

			PreparedStatement stmt = conn.prepareStatement(sql);      
			ResultSet result = stmt.executeQuery();

			while (result.next())
			{
				FluxoExames FluxoExamesVO = new FluxoExames(); 
				
				
				Exame data_exame = new Exame();
				data_exame.setData_exame(result.getString("data_exame"));

				FluxoExamesVO.setExame(data_exame);
				
				Paciente paciente = new Paciente();
				paciente.setNome_paciente(result.getString("nome_paciente"));
				FluxoExamesVO.setPaciente(paciente);
			
				Examelab nomeExame = new Examelab();
				nomeExame.setExame_nome(result.getString("exame_nome"));
				
				FluxoExamesVO.setExamelab(nomeExame);
				
				Status stats = new Status();
				stats.setStatus_nome(result.getString("status_nome"));
				FluxoExamesVO.setStatus(stats);
				
				fluxo.add(FluxoExamesVO);
			}

			return fluxo;
		}
		catch (Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
		finally
		{
			if (conn != null)
			{
				try
				{
					conn.close();
				}
				catch(Exception closeEx)
				{
					//do nothing
				}
			}
		}
	}
	
	public void GerarPdf(String data_inicio, String data_fim) throws Exception {
        Document doc = null;
        OutputStream os = null;
      
        
        try {
            //cria o documento tamanho A4, margens de 2,54cm
            doc = new Document(PageSize.A4, 72, 72, 72, 72);
            String localPath = System.getProperty("user.home");
            //cria a stream de saída]
            int i=0;            
            os = new FileOutputStream(localPath + "/Desktop/Relatório"+i+".pdf");
            i++;
           
       
            //associa a stream de saída ao
            PdfWriter.getInstance(doc, os);
       
            //abre o documento
            doc.open();
 
            //adiciona o texto ao PDF
            Paragraph p = new Paragraph("Relatório de Fluxo de Exames");
            p.setAlignment(Element.ALIGN_CENTER);
           
            List test = buscaExame(data_inicio, data_fim);
            
            Image img = Image.getInstance(localPath +"/Desktop/LabWeb/ImagemPdf/banner.png");
    
            img.setAlignment(Element.ALIGN_CENTER);
            
            
            doc.add(img);
            doc.add(p);
            
            
        } finally {
            if (doc != null) {
                //fechamento do documento
                doc.close();
            }
            if (os != null) {
               //fechamento da stream de saída
               os.close();
            }
        }
    
    }

}
