package fact;

class InputValueOutofBoundsException extends RuntimeException{
	public InputValueOutofBoundsException() {}
}

public aspect BoundsChecker {
	pointcut CheckParams(int n, int x) : call(public * Factorial.factorial(..)) && args(n, x);
	Object around(int n, int x) : CheckParams(n, x) && !withincode(* Factorial.factorial(..)){
		if (n < 0){
			throw new InputValueOutofBoundsException();
		}
		if (x != 1){
			x = 1;
		}
		Object result = proceed(n, x);
		return result;
	}
}
