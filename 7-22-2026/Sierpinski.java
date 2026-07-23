import java.util.ArrayList;
import java.util.List;

import java.util.Scanner;

public class Sierpinski {
    static final String[] SYMBOLS = {"*", "+", "x", "o", "#"};

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the order of the fractal: ");
        int order = scanner.nextInt();

        List<String> art = build(order);
        for (String row : art) System.out.println(row);
    }

    static List<String> build(int order) {
        String symbol = SYMBOLS[order % SYMBOLS.length];
        if (order == 0) {
            List<String> base = new ArrayList<>();
            base.add(symbol);
            return base;
        }

        List<String> previous = build(order - 1);
        String pad = " ".repeat((int) Math.pow(2, (order-1)));

        List<String> result = new ArrayList<>();
        for (String line : previous) {
            result.add(pad + line + pad);
        }
        for (String line : previous) {
            result.add(line + symbol + line);
        }
        return result;
    }
}
