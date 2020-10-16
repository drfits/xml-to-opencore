package com.drfits.oc.config;

import java.io.File;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class Main {

    public static void main(String[] args) throws TransformerException {
        System.out.println("/***************************************/");
        System.out.println("/*********    XML2OC Converter    ******/");
        System.out.println("/*********    OpenCore v.0.6.2    ******/");
        System.out.println("/***************************************/");

        if (args.length != 3) {
            System.out.println("Please use this format for transform: java -jar xml2oc.jar oc.xslt oc.xml config.plist");
            return;
        }

        System.out.println();
        System.out.println("XSLT file: " + args[0]);
        System.out.println("XML configuration file: " + args[1]);
        System.out.println();

        final Source xslt = new StreamSource(new File(args[0]));
        final Source xml = new StreamSource(new File(args[1]));
        final TransformerFactory factory = TransformerFactory.newInstance();
        final Transformer transformer = factory.newTransformer(xslt);

        final File cfg = new File(args[2]);
        transformer.transform(xml, new StreamResult(cfg));
        System.out.println("OC configuration file " + args[2] + " created, size: " + cfg.length() + " bytes.");
    }
}



