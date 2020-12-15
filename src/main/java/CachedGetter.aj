import java.util.HashMap;
import java.util.Map;

public aspect CachedGetter {
    private final Map<Integer, Integer> cache = new HashMap<>();

    pointcut callGetData(int i): execution(int DataGenerator.getData(int)) && args(i);

    int around(int i): callGetData(i) {
        if(!cache.containsKey(i)) {
            cache.put(i, proceed(i));
        }
        return cache.get(i);
    }
}
