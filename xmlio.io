Builder := Object clone do(
	indent := ""
)

curlyBracket := method(
	call message arguments(arg, self doMessage(arg)) join("")
)

atParseHash := method(
	key := call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"")
	value := call evalArgAt(1)
	" #{key}=\"#{value}\"" interpolate
)

Builder forward := method(
  atts := ""
  arg := call message arguments
  if(arguments size > - and arguments at(0) name == "curlyBracket",
  	atts = doMessage(arguments removeFirst)
  )
  writeln(indent, "<", call message name, ">")
  call message arguments foreach(
		arg,
		indent = indent .. "   " 
		content := self doMessage(arg); 
		if(content type == "Sequence", writeln(indent, content))
		indent = indent exclusiveSlice(4)
	)
  writeln(indent, "</", call message name, ">"))

Builder  ul(
	li("Io"), 
	li("Lua"), 
	li("JavaScript"), ul(li("Hi"), li("Hello")))
