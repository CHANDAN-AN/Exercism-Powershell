public class Lasagna {
    public static void main(String[] args) {
    }

    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
        return 40;
    }

    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int remainingMinutesInOven) {
        return (expectedMinutesInOven() - remainingMinutesInOven);
    }

    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int layers) {
        return 2 * layers;
    }

    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int layers, int remainingMinutesInOven) {
        return preparationTimeInMinutes(layers) + remainingMinutesInOven;
    }
}