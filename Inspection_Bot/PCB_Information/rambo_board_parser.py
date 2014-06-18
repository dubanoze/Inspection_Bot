import xml.etree.ElementTree as ET

output_file = "rambo.gcode"

if __name__ == '__main__':
    tree = ET.parse('RAMBo_mod.xml')
    root = tree.getroot()
    visible_layers=[]
    for layer in root.findall("./drawing/layers/layer[@visible='yes']"):
        #print layer.tag
        #print layer.attrib
        #print layer.attrib['number']
        visible_layers.append(layer.attrib['number'])
    
    #print visible_layers
    for elements in root.findall('./drawing/board/elements/'):
        #print elements.attrib
        attribute = ET.SubElement(elements, 'attribute')
        #print attribute.attrib
    f = open(output_file, "w")
    f.write("G28 X F2000 \n")
    f.write("G4 P2000 \n")
    f.write("G28 Y F2000 \n")
    f.write("G4 P2000 \n")
    x_offset = 27.10
    y_offset = 11.11
    for attribute in root.findall("./drawing/board/elements/element/attribute[@layer='25']"):
        x = attribute.attrib['x']
        y = attribute.attrib['y']
        x = "{:.2f}".format(float(x)+x_offset)
        y = "{:.2f}".format(float(y)+y_offset)
        gcode_command="G0 X" +x + " Y" +y + " F2000"
        print gcode_command
        gcode_command=gcode_command+'\n'
        f.write("G4 P2000 \n")
        f.write(gcode_command)
    f.close
    #print elements.tag
        #print elements.attrib
    #for neighbor in root.iter('layer'):
    #    print neighbor.attrib
    #print root.iter('board')
    #for neighbor in root.iter('board'):
    #    print neighbor.tag
    #    print neighbor.attrib