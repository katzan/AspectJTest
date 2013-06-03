package ajia.securiry;

public aspect SecurityAspect {
	private Authenticator authenticator = new Authenticator();

	pointcut secureAccess()
        : execution(* ajia.messaging.MessageCommunicator.deliver(..));

	before() : secureAccess() {
		System.out.println("Checking and authenticating user");
		authenticator.authenticate();
	} 
}
