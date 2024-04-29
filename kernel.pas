library kernel;

var
        vidmem: PChar = PChar($b8000);
        vids: Integer = 0;
procedure putss(s : PChar);
var 
    i: Integer;
begin
    i:=0;
    repeat
    vidmem[vids] := s[i];
    i := i + 1 ;
    vids := vids + 2;    
    until (s[i] = #0);
end;

procedure clears;cdecl;
var
        i: Integer;
        ii:integer;
begin
        for i := 0 to 2000 do
            begin
                vidmem[i+i] := #32;
                vidmem[i+i+1] := #103;
            end;
end;

procedure mains;cdecl;

var
        i: Integer;
        buffer: PChar ='hello world \n';
label halts;
begin
        
        clears();
        putss(buffer);
        halts:
        goto halts;
end;

exports 
mains;
end.
