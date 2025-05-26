import std.stdio;
import std.string;
import std.file;
import std.ascii;
import std.array;
import std.exception;
import std.conv;
import std.range;
import std.typecons;

enum Step{
  L,
  R,
}

alias State = string;
alias Symbol = string;

struct Turd{
  State state;
  Symbol read;
  Symbol write;
  Step step;
  State next;
}

auto parseTurd(string filepath, Tuple!(int,string )s){
  auto tokens= s[1].split!isWhite.map(x=>x.strip).array;
  if (tokens.length!=5){
    writeln(filepath,":",s[0],":A single turd is expected to have 5 tokens");
    exit(1);
  }

  immutable int CURRENT=0;
  immutable int READ=1;
  immutable int WRITE=2;
  immutable int STEP=3;
  immutable int NEXT=4;
  enforce(tokens.length==5);
  Turd turd;
  turd.current=tokens[CURRENT];
  turd.read=tokens[READ];
  turd.write=tokens[WRITE];
  switch(tokens[STEP]){
    case "L":
      turd.step=Step.L;
      break;
    case "R":
      turd.step=Step.R;
      break;
    default:
      writeln(filepath,":", s[0],": `", tokens[STEP],"` is not a correct step.Expected 'L' or 'R'");
    
  }
  turd.step=parse!Step(tokens[STEP]);
  turd.next=tokens[NEXT];
  return turd;
}

int main(string[] args){
  if(args.length<2){
    stderr.writeln("ERROR:input file is not provided");
    stderr.writeln("Usage: turd <input.turd>");
    return 1;
  }
  writeln(
    readText(args[1])
    .splitLines
    .map!(x=>x.strip)
    .enumerate(1)
    .filter!(x=>x[1].length>0)
    .map!(x=>parseTurd(filepath,x)));
  return 0;
}
