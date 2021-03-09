
public aspect TraceAspectMaline {
	
	/*Trace the method of interest*/
	pointcut methodToTrace(): execution(String *App.getName(..));
	
	before(): methodToTrace() {
		System.out.println("[BGN] " + thisJoinPointStaticPart.getSignature() + ", " + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		System.out.println("[BGN] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}
}
