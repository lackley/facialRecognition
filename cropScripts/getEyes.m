function [eyes0,eyes1] = getEyes(ind)

X= [158,120,214,124; 158,120,214,124; 154,117,207,119; 155,119,211,121; 171,124,227,124; 153,111,209,113; 154,120,211,122; 156,119,210,116; 155,116,211,118; 156,108,212,111; 153,118,207,122; 176,127,229,130; 157,123,207,123;168,120,223,121;173,126,225,129; 169,125,221,128; 168,125,221,127; 176,129,227,129; 165,122,218,122; 165,128,222,132; 168,112,221,115;153,127,209,129;148,138,200,137;148,135,201,137;137,137,190,136;151,140,204,138;137,132,190,132;136,132,191,132;152,136,205,135;139,131,192,131;135,138,188,140;132,123,183,120;132,140,183,140;159,113,214,115;160,109,218,110;160,116,221,117;152,107,206,108;156,117,212,118;163,116,220,117;149,120,206,121;164,117,219,117;161,108,213,114;158,113,212,115;155,118,212,123;164,110,216,110;164,110,217,110;158,116,213,115;162,111,215,109;162,110,217,111;162,110,217,111;160,116,212,114;158,114,209,114;156,115,210,113;167,115,219,117;161,113,214,113;102,123,159,119;70,122,127,118;85,117,141,114;101,130,159,132;88,120,143,117;87,121,143,117;97,126,155,122;81,124,137,120;76,119,133,115;71,115,127,112;80,120,138,118;141,114,193,114;140,125,193,125;146,127,197,129;148,130,200,130;136,133,189,135;136,133,189,135;139,129,191,129;142,140,195,137;138,135,192,137;144,135,195,137;130,143,180,143;139,122,189,121;132,137,186,135;134,118,186,116;128,123,182,121;139,122,189,123;132,137,187,135;136,127,189,127;142,116,190,115;125,117,180,115;154,123,203,124;145,113,197,114;147,125,198,122;151,125,204,122;130,122,182,118;149,119,201,118;128,122,179,118;128,122,180,117;139,124,190,120;129,130,181,131;120,128,174,128;129,120,181,115;114,120,164,115;153,119,212,118;151,120,209,120;141,119,200,118;155,118,213,118;142,117,201,116;137,118,197,116;152,121,213,120;142,118,201,117;141,117,202,118;140,108,198,106;138,118,195,114;146,132,208,126;149,123,210,118;149,128,212,124;145,129,208,122;140,119,202,113;153,122,214,118;150,129,213,122;152,122,214,120;142,125,201,125;155,111,214,105;136,127,199,125;162,125,218,120;165,121,223,118;150,105,210,99;176,104,235,103;180,120,237,120;180,120,237,120;165,127,223,122;145,116,202,108;145,116,202,108;156,112,213,104;152,116,210,110;151,140,202,142;157,135,108,137;158,136,209,137;148,140,197,140;159,141,209,140;164,136,216,138;153,139,203,141;154,136,205,140;153,142,209,142;154,138,205,137;160,139,211,143;104,121,159,122;104,122,160,124;102,120,159,121;103,121,159,123;107,121,163,120;107,121,163,120;105,122,160,123;102,128,158,127;109,119,169,119;105,121,160,122;103,119,160,120;142,130,195,129;146,117,200,116;146,137,200,134;137,140,190,137;137,120,190,119;137,134,190,132;141,139,197,137;147,135,200,133;134,121,190,120;138,120,193,120;145,136,202,135]; 

v=[];
for i= ind
    v = [v;X(i,:)];
end


eyes0 = v(:,1:2);
eyes1 = v(:,3:4);

end