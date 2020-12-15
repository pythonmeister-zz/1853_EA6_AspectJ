public class DataGenerator {
    private static final int MAGIC_NUMBER = 42;

    public int getData(int i) {
        try {
            Thread.sleep(100);
        } catch (InterruptedException ex) {
        }
        return i * MAGIC_NUMBER;
    }

    public static void main(String [] args) {
        DataGenerator generator = new DataGenerator();
        System.out.println(generator.getData(1));
    }
}