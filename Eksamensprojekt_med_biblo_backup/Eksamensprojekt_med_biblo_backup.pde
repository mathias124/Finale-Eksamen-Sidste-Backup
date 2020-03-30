//ArrayList<Data> data = new ArrayList<Data>();

String tekst;
String massevaerdi;
float massedata;
float atommertalhusk;
//Datatast datatast1 = new Datatast(335,95);
//Datatast datatast2 = new Datatast(700,95);


import controlP5.*;// importeret fra biblitoteket 
ControlP5 cp5;//sætter op en variabel.

void setup(){//Denne void kører en gang, fra starten af.
  size(1000,500);//Dette laver et vinduet af (1000 pixels ad x aksen og 500 pixels ad y-aksen.
  background(71,113,72);//Dette sætter stemningen og baggrunden.
  //data.add(datatast1);
//data.add(datatast2);
rectMode(CENTER);
fill(255);//Farver rectanglerne vide.
rect(335,233,390,70,6);//Skaber en rektangel.
rect(740,233,410,70,6);
rect(335,388,390,70,6);
rect(740,388,410,70,6);
//rect(160,83,310,70);
textSize(22);//Sætter Tekststørrelsen til text.
fill(201,0,61);//Farver teksten
text("Molarmasse:",145,393);//Sætter en Tekst med molarmasse på X og Y pixel.
text("Stofmængde:",540,393);



cp5= new ControlP5(this);//Dette har i sammenhæng med controlP5, gjort at man kan sige cp5 istedet for ControlP5, og (this) gør det objektorienteret, som er smart da vi skal bruge den til et objekt der er en knap.

PFont fonten = createFont("Arial",18);//Dette laver fonten Arial (henter da den eksistere)
ControlFont font = new ControlFont(fonten);//Dette gør så det er en font for alle cp5 enheder.

cp5.setFont(font);//Dette sætter det som fonten.

cp5.addButton("STOF")//Tilføjer en knap med Størrelse og position.
.setPosition(335,163)
.setSize(183,35)
;
cp5.addButton("masse")
.setPosition(750,163)
.setSize(183,35)
;
cp5.addTextfield("Textfelt")//Dette sætter et tekstfelt fra bibloteket, herunder størrelse af textfelt og position.
.setPosition(145,13)
.setSize(383,62)
;

tabledata();//dette gør at ved startup loader den kommanden tabledata og gør det muligt at skabe en void der hedder tabledata.
}
void draw(){//dette er en konstant void, som kører 60 gange i sekunder. Medmindre Kommanden frameRate(x) er brugt. 
  if(taeller==-1){//Her appelere den til at hvis taelleren er i, så starter programmet.
    if(Symbolatom.hasValue(tekst)){//Her appelere den til at se tekstfeltet og hente Value hvis Tekstsfelte har noget som StringListen  Symbolatom indeholder.
      for(int j=0; j < Symbolatom.size();j++){//Dette er et forlob der tæller kolloner herunder tæller dens size som er på 118 Strings.
        String Hukommelse =Symbolatom.get(j);//Her laves der en variable der gemmes som Symbolsatoms for-loop værdi.
        if(Hukommelse.equals(tekst)){//Her appelere hvis For loopets værdi som er gemt er det samme som det der står i tekstfeltet.
          taeller=j;//Så er det sandt altså Taelleren har den rigtige for loop værdi.
          println(Atommasse.get(taeller));// Dette bliver brugt til at tjekke om programmet virker ved at sætte Tekstfeltets værdi i Console.
          text(Atommasse.get(taeller)+"mol",280,393);//Dette henter værdien fra tekstfeltet og hvis det passer henter den Stringliste [3] som er atommassen der passer i sizen af Symbolatom Det vil sige. Hvis der er tastet "H" vil den skrive H's atommasse ud nemlig 1.007.
          //Derefter skriver den ud dens enhed nemlig +"mol" og dens placering derefter.
          String atommer = Atommasse.get(taeller);//Her gemmes værdien så den kan blive konverteret og husket-imens programmet kører til at blive en float så det kan blive divideret med massen (herunder massedata).
           atommertalhusk =Float.parseFloat(atommer);//konvertering.
         
  
  //if(taeller== -1){
  //if(Atomnummer.hasValue(tekst)){
  //for(int j=0; j < Atomnummer.size(); j++){
    //String Hukommelse = Atomnummer.get(j);
    //if(Hukommelse.equals(tekst)){
      //taeller=j;
      //println(Symbolatom.get(taeller));
  
  }
  }
  }
  }
}
void masse(){
  massevaerdi=cp5.get(Textfield.class,"Textfelt").getText();
  float massedata = Float.parseFloat(massevaerdi);
 text("Dit indtastede masse:"+massevaerdi+"g",553,240);
 text(massedata/ atommertalhusk+"g/mol",688,393);
 //println(massedata / taeller);
 //text( massedata / (Atommasse.get(taeller))+"g/mol",250,250);
 //print(massedata);
}

void STOF(){ 
tekst=cp5.get(Textfield.class,"Textfelt").getText();
text("Din indtaste stof:"+tekst,150,240);
//print(tekst);



}
