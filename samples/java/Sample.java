
public class Sample {

	static volatile int x;
	static volatile int y;

	static int threadA() {
		x = 1;
		return y;
	}

	static int threadB() {
		y = 1;
		return x;
	}

	static void doRun(Runnable r) {
		Thread t = new Thread() {
			@Override
			public void run() {
				while(true) {
					r.run();
				}

			}
		};

		t.setDaemon(true);
		t.start();
	}


	public static void main(String... args) throws InterruptedException {
		doRun(Sample::threadA);
		doRun(Sample::threadB);

		Thread.sleep(1_000);
	}
}
