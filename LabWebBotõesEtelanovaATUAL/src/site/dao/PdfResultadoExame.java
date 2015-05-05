package site.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;

import site.vo.Exame;
import site.vo.FluxoExames;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.FontFactory;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

public class PdfResultadoExame extends Dao {

	public void GerarPdf(Exame exame) throws Exception {
		Document doc = null;
		OutputStream os = null;

		try {
			// cria o documento tamanho A4, margens de 2,54cm
			doc = new Document(PageSize.A4, 72, 72, 72, 72);
			
			String url = getClass().getResource("").getPath().replaceAll("%20", " "); 
			String url2 = getClass().getResource("../../../../").getPath().replaceAll("%20", " "); 
			// cria a stream de saída]
			os = new FileOutputStream(url2 + "ResultadoExame.pdf");
			
			// associa a stream de saída ao
			PdfWriter.getInstance(doc, os);

			// abre o documento
			doc.open();

			// adiciona o texto ao PDF

			Paragraph p = new Paragraph("Resultado Exame - "+exame.getExamelab().getExame_nome() +"\n\n");
			p.setAlignment(Element.ALIGN_CENTER);
			

			Image img = Image.getInstance(url + "/banner.jpg");			
			
			img.setAlignment(Element.ALIGN_CENTER);
			
			img.scaleAbsolute(280,50);
		
			doc.add(img);
			
			Paragraph p1 = new Paragraph("\n\nPaciente: "+exame.getPaciente().getNome_paciente());
			Paragraph p2 = new Paragraph("Médico: "+exame.getNome_medico());
			Paragraph p3 = new Paragraph("Data exame: "+exame.getData_exame());
			doc.add(p1);
			doc.add(p2);
			doc.add(p3);
			
			Font fonte_c = FontFactory.getFont(FontFactory.COURIER, 11);
			fonte_c.setColor(BaseColor.WHITE);
			fonte_c.isBold();
			PdfPTable table = new PdfPTable(new float[] {14.0f});
			table.setHeaderRows(1);
			PdfPCell header = new PdfPCell(new Paragraph(exame.getExamelab().getExame_nome(), fonte_c));
			header.setColspan(1);
			header.setBackgroundColor(BaseColor.GRAY);
			table.addCell(header);
			doc.add(table); 
			
			Paragraph p4 = new Paragraph("\nResultado:\n"+exame.getDescricao());
			p4.setAlignment(Element.ALIGN_CENTER);
			doc.add(p4);
						
		} finally {
			if (doc != null) {
				// fechamento do documento
				doc.close();
			}
			if (os != null) {
				// fechamento da stream de saída
				os.close();
			}
		}

	}

}
