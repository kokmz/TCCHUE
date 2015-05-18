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
			Paragraph p5 = new Paragraph("\n");
			doc.add(p1);
			doc.add(p2);
			doc.add(p3);
			doc.add(p5);
			
			PdfPTable table = new PdfPTable(1);
			
			Font fonte_c = FontFactory.getFont(FontFactory.COURIER, 11);
			fonte_c.setColor(BaseColor.WHITE);
			fonte_c.isBold();

			table.setWidthPercentage(100.0f);
			PdfPCell header = new PdfPCell(new Paragraph(exame.getExamelab().getExame_nome(), fonte_c));
			header.setBackgroundColor(BaseColor.GRAY);
			table.addCell(header);
			doc.add(table); 
			
			Paragraph p4 = new Paragraph("Resultado:");
			Paragraph p6 = new Paragraph(exame.getDescricao());
			p6.setAlignment(Element.ALIGN_CENTER);
			doc.add(p4);
			doc.add(p6);
						
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
