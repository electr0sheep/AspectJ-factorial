package fact;

public class Factorial {
	public static int factorial(int n, int x){
		if (n == 0) return x;
		else return factorial(n-1, n*x);
	}

	public static void main(String[] args) {
		int x = factorial(5, 4);
		System.out.println("x = " + x);
		x = factorial(5, 1);
		System.out.println("x = " + x);
		System.out.println("This should be an error:");
		x = factorial(-1, 1);
	}

}
