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
        Source xslt = new StreamSource(new File(args[0]));
        Source text = new StreamSource(new File(args[1]));
        TransformerFactory factory = TransformerFactory.newInstance();
        Transformer transformer = factory.newTransformer(xslt);

        transformer.transform(text, new StreamResult(new File(args[2])));
    }
}



