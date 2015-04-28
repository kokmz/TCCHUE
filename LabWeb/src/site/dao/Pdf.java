package site.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;

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

public class Pdf extends Dao {

	public void GerarPdf(java.util.List<FluxoExames> fluxo) throws Exception {
		Document doc = null;
		OutputStream os = null;

		try {
			// cria o documento tamanho A4, margens de 2,54cm
			doc = new Document(PageSize.A4, 72, 72, 72, 72);
			
			String url = getClass().getResource("").getPath().replaceAll("%20", " "); 
			String url2 = getClass().getResource("../../../../").getPath().replaceAll("%20", " "); 
			// cria a stream de saída]
			os = new FileOutputStream(url2 + "RelatorioFluxo.pdf");
			System.out.println(os);
			// associa a stream de saída ao
			PdfWriter.getInstance(doc, os);

			// abre o documento
			doc.open();

			// adiciona o texto ao PDF

			Paragraph p = new Paragraph("Relatório de Fluxo de Exames\n\n");
			p.setAlignment(Element.ALIGN_CENTER);
			

			Image img = Image.getInstance(url + "/banner.jpg");			
			
			img.setAlignment(Element.ALIGN_CENTER);
			
			img.scaleAbsolute(280,50);
		
			doc.add(img);
			doc.add(p);

			PdfPTable table = new PdfPTable(new float[] { 3.0f, 4.0f, 14.0f,
					3.0f });

			table.setHeaderRows(1);
			
			// PdfPageEventHelper evento = new PdfPageEventHelper();

			Font fonte_c = FontFactory.getFont(FontFactory.COURIER, 11);
			fonte_c.setColor(BaseColor.WHITE);
			fonte_c.isBold();

			Font fonte = FontFactory.getFont(FontFactory.COURIER, 8);
			table.setWidthPercentage(120.0f);

			PdfPCell header = new PdfPCell(new Paragraph("Data", fonte_c));

			PdfPCell header2 = new PdfPCell(new Paragraph("Nome", fonte_c));
			PdfPCell header3 = new PdfPCell(new Paragraph("Exame", fonte_c));
			PdfPCell header4 = new PdfPCell(new Paragraph("Status", fonte_c));

			header.setColspan(1);
			header2.setColspan(1);
			header3.setColspan(1);
			header4.setColspan(1);

			header.setHorizontalAlignment(Element.ALIGN_CENTER);
			header.setVerticalAlignment(Element.ALIGN_CENTER);
			header2.setHorizontalAlignment(Element.ALIGN_CENTER);
			header2.setVerticalAlignment(Element.ALIGN_CENTER);
			header3.setHorizontalAlignment(Element.ALIGN_CENTER);
			header3.setVerticalAlignment(Element.ALIGN_CENTER);
			header4.setHorizontalAlignment(Element.ALIGN_CENTER);
			header4.setVerticalAlignment(Element.ALIGN_CENTER);

			header.setBackgroundColor(BaseColor.GRAY);
			header2.setBackgroundColor(BaseColor.GRAY);
			header3.setBackgroundColor(BaseColor.GRAY);
			header4.setBackgroundColor(BaseColor.GRAY);

			table.addCell(header);
			table.addCell(header2);
			table.addCell(header3);
			table.addCell(header4);

			for (FluxoExames f : fluxo) {

				table.addCell(new Phrase(f.getExame().getData_exame(), fonte));
				table.addCell(new Phrase(f.getPaciente().getNome_paciente(),
						fonte));
				table.addCell(new Phrase(f.getExamelab().getExame_nome(), fonte));
				table.addCell(new Phrase(f.getStatus().getStatus_nome(), fonte));

			}

			doc.add(table); 
			
			
			 
		
			
			
			
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
