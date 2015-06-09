package site.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;

import site.vo.Exame;
import site.vo.Paciente;

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

public class PdfHistorico extends Dao {

	public void GerarPdf(java.util.List<Exame> exame, Paciente paciente)
			throws Exception {
		Document doc = null;
		OutputStream os = null;

		try {
			// cria o documento tamanho A4, margens de 2,54cm
			doc = new Document(PageSize.A4, 72, 72, 72, 72);

			String url = getClass().getResource("").getPath().replaceAll("%20", " "); 
			String url2 = getClass().getResource("../../../../").getPath().replaceAll("%20", " "); 
			// cria a stream de saída]
			os = new FileOutputStream(url2 + "RelatorioHistorico.pdf");
					/*
					+ new SimpleDateFormat("ddMMyyyy").format(new Date()) + "-"
					+ new SimpleDateFormat("hhmmss").format(new Date())
					+ ".pdf");
					*/

			// associa a stream de saída ao
			PdfWriter.getInstance(doc, os);

			// abre o documento
			doc.open();

			// adiciona o texto ao PDF
			Font fonte_dados = FontFactory
					.getFont(FontFactory.COURIER_BOLD, 18);
			Font fonte_2 = FontFactory.getFont(FontFactory.TIMES_BOLD, 12);
			
			Paragraph p = new Paragraph("Relatório de Histórico de Exame - "+ paciente.getNome_paciente()
					+ "\n\n");
			p.setAlignment(Element.ALIGN_CENTER);
						
			int i = 0;
			for (Exame f : exame) {
				i=i+1;
			}
			
			Image img = Image.getInstance(url + "/banner.jpg");

			img.setAlignment(Element.ALIGN_CENTER);

			img.scaleAbsolute(280, 50);

			doc.add(img);
			doc.add(p);
			
			//Muda de pagina 
			//doc.newPage();

			PdfPTable table = new PdfPTable(new float[] { 14.0f, 3.0f });

			table.setHeaderRows(1);

			// PdfPageEventHelper evento = new PdfPageEventHelper();

			Font fonte_c = FontFactory.getFont(FontFactory.COURIER, 11);
			fonte_c.setColor(BaseColor.WHITE);
			fonte_c.isBold();

			Font fonte = FontFactory.getFont(FontFactory.COURIER, 8);
			table.setWidthPercentage(120.0f);

			PdfPCell header = new PdfPCell(new Paragraph("Exame", fonte_c));
			PdfPCell header1 = new PdfPCell(new Paragraph("Data do Exame",
					fonte_c));

			header.setColspan(1);
			header1.setColspan(1);

			header.setHorizontalAlignment(Element.ALIGN_CENTER);
			header.setVerticalAlignment(Element.ALIGN_CENTER);
			header1.setHorizontalAlignment(Element.ALIGN_CENTER);
			header1.setVerticalAlignment(Element.ALIGN_CENTER);

			header.setBackgroundColor(BaseColor.GRAY);
			header1.setBackgroundColor(BaseColor.GRAY);

			table.addCell(header);
			table.addCell(header1);

			
			for (Exame f : exame) {

				table.addCell(new Phrase(f.getExamelab().getExame_nome(), fonte));
				table.addCell(new Phrase(f.getData_exame(), fonte));
				

			}

			Paragraph p_table = new Paragraph("Exames Realizados\n\n",
					fonte_dados);

			doc.add(p_table);
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
