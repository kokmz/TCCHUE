package site.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

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

public class PdfProntuario extends Dao {

	public void GerarPdf(java.util.List<Exame> exame, Paciente paciente)
			throws Exception {
		Document doc = null;
		OutputStream os = null;

		try {
			// cria o documento tamanho A4, margens de 2,54cm
			doc = new Document(PageSize.A4, 72, 72, 72, 72);

			String localPath = System.getProperty("user.home");
			// cria a stream de saída]
			os = new FileOutputStream(localPath + "/Desktop/Prontuario-"
					+ new SimpleDateFormat("ddMMyyyy").format(new Date()) + "-"
					+ new SimpleDateFormat("hhmmss").format(new Date())
					+ ".pdf");
			System.out.println(os);
			// associa a stream de saída ao
			PdfWriter.getInstance(doc, os);

			// abre o documento
			doc.open();

			// adiciona o texto ao PDF
			Font fonte_dados = FontFactory
					.getFont(FontFactory.COURIER_BOLD, 18);
			Font fonte_2 = FontFactory.getFont(FontFactory.TIMES_BOLD, 12);

			Paragraph p = new Paragraph("Prontuário Digital do Paciente - "
					+ paciente.getNome_paciente() + "\n\n\n\n");
			Paragraph p10 = new Paragraph("Dados Pessoais\n\n", fonte_dados);
			Paragraph p1 = new Paragraph("Nome:  "
					+ paciente.getNome_paciente(), fonte_2);
			Paragraph p2 = new Paragraph("Codigo:  " + paciente.getCod_verif(),
					fonte_2);
			Paragraph p3 = new Paragraph("CPF:  " + paciente.getCpf_paciente(),
					fonte_2);
			Paragraph p4 = new Paragraph("RG:  " + paciente.getRg_paciente(),
					fonte_2);
			Paragraph p5 = new Paragraph("Data de Nascimento:  "
					+ paciente.getDatanasc_paciente(), fonte_2);
			Paragraph p6 = new Paragraph("Email:  "
					+ paciente.getEmail_paciente(), fonte_2);
			Paragraph p7 = new Paragraph("Telefone:  "
					+ paciente.getTelefone_paciente(), fonte_2);
			Paragraph p8 = new Paragraph("Convênio:  "
					+ paciente.getConvenio_paciente() + "\n\n", fonte_2);
			Paragraph p9 = new Paragraph("Endereço\n\n", fonte_dados);
			Paragraph p11 = new Paragraph("Estado:  "
					+ paciente.getEstado().getSigla_estado() + " - "
					+ paciente.getEstado().getNome_estado(), fonte_2);
			Paragraph p12 = new Paragraph("Cidade:  "
					+ paciente.getCidade_paciente(), fonte_2);
			Paragraph p13 = new Paragraph("CEP:  "
					+ paciente.getLogradouro().getCep(), fonte_2);
			Paragraph p14 = new Paragraph("Bairro:  "
					+ paciente.getLogradouro().getBairro(), fonte_2);
			Paragraph p15 = new Paragraph("Endereço:  "
					+ paciente.getLogradouro().getEndereco(), fonte_2);
			Paragraph p16 = new Paragraph("Numero:  "
					+ paciente.getNumero_endereco(), fonte_2);
			
			int i = 0;
			for (Exame f : exame) {
				i=i+1;
			}
			

			p.setAlignment(Element.ALIGN_CENTER);

			Image img = Image.getInstance(localPath
					+ "/Desktop/LabWeb/ImagemPdf/banner.jpg");

			img.setAlignment(Element.ALIGN_CENTER);

			img.scaleAbsolute(280, 50);

			doc.add(img);
			doc.add(p);
			doc.add(p10);
			doc.add(p1);
			doc.add(p2);
			doc.add(p3);
			doc.add(p4);
			doc.add(p5);
			doc.add(p6);
			doc.add(p7);
			doc.add(p8);
			doc.add(p9);
			doc.add(p11);
			doc.add(p12);
			doc.add(p13);
			doc.add(p14);
			doc.add(p15);
			doc.add(p16);
			
			
			if (paciente.getEndereco_complemento().isEmpty()) {

			} else {
				Paragraph p17 = new Paragraph("Complemento: "
						+ paciente.getEndereco_complemento() + "\n", fonte_2);
				doc.add(p17);
			}
			
			Paragraph p18 = new Paragraph("\n\n\nQuantidade de Exames realizados na clínica: "
					+ i + "\n\n", fonte_2);
			doc.add(p18);

			
			//Muda de pagina 
			doc.newPage();

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
