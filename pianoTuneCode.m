clear all
G4=keynotebueni(47,0.5);
G4m=keynotebueni(47,0.33);%medium length G4
G4s=keynotebueni(47,0.17);%Short G4
A4=keynotebueni(49,0.5);
A4l=keynotebueni(49,0.75);%long A4 (to end a line)
C5=keynotebueni(52,0.5);
C5l=keynotebueni(52,1.0);%long C5 (to end a line)
C5Sl=keynotebueni(52,1.25);%Super-long C5 (to end the song)
B4l=keynotebueni(51,1.0);%long B4 (to end a line)
B4=keynotebueni(51,0.5);
D5=keynotebueni(54,0.5);
E5=keynotebueni(56,0.5);
F5s=keynotebueni(57,0.17);%Short F5
F5m=keynotebueni(57,0.33);%Medium F5
G5=keynotebueni(59,0.5);
B4m=keynotebueni(51,0.33);
B4p=keynotebueni(51,0.17);
y=[G4m,G4s,A4,G4,C5,B4l,zeros(1,1000),G4m,G4s,A4,G4,D5,C5l,zeros(1,800),G4m,G4s,G5,E5,C5,B4m,B4p,B4,A4l,zeros(1,1500),F5m,F5s,E5,C5,D5,C5Sl];
soundsc(y,44100)