package site.dao;
import java.io.FileOutputStream;
import java.io.OutputStream;

import site.vo.FluxoExames;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.List;
import com.itextpdf.text.ListItem;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
 

public class Pdf extends Dao{
	
	public void GerarPdf(java.util.List<FluxoExames> fluxo) throws Exception {
        Document doc = null;
        OutputStream os = null;
      
        
        try {
            //cria o documento tamanho A4, margens de 2,54cm
            doc = new Document(PageSize.A4, 72, 72, 72, 72);
            String localPath = System.getProperty("user.home");
            //cria a stream de saída]          
            os = new FileOutputStream(localPath + "/Desktop/LabWeb/PDF/Relatorio.pdf");
           
       
            //associa a stream de saída ao
            PdfWriter.getInstance(doc, os);
       
            //abre o documento
            doc.open();
 
            //adiciona o texto ao PDF
            Paragraph p = new Paragraph("Relatório de Fluxo de Exames");
            p.setAlignment(Element.ALIGN_CENTER);
            p.add("");

            
            Image img = Image.getInstance(localPath +"/Desktop/LabWeb/ImagemPdf/banner.png");
    
            img.setAlignment(Element.ALIGN_CENTER);
            
            doc.add(img);
            doc.add(p);
            
            for(FluxoExames f : fluxo){
            	List newList = new List(false, false, 10);
            	newList.add(new ListItem(f.getExame().getData_exame()));
            	newList.add(new ListItem(f.getPaciente().getNome_paciente()));
            	newList.add(new ListItem(f.getExamelab().getExame_nome()));
            	newList.add(new ListItem(f.getStatus().getStatus_nome()));

            	PdfPTable table = new PdfPTable(4);
            	table.addCell(f.getExame().getData_exame());
            	table.addCell(f.getPaciente().getNome_paciente());
            	table.addCell(f.getExamelab().getExame_nome());
            	table.addCell(f.getStatus().getStatus_nome());
            	doc.add(table);
            
            }
            
            
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
