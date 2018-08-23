import java.io.*;
import java.net.Socket;

class EchoClient {

    public static void main(String[] args) throws IOException {
        String message = args[0]; //{\"name\":\"Tom\",\"message\":\"Hello,server\"}
        String hostName = "localhost";
        int portNumber = 8080;
        try (Socket echoSocket = new Socket(hostName, portNumber);
             PrintWriter out = new PrintWriter(echoSocket.getOutputStream(), true);
             BufferedReader in = new BufferedReader(new InputStreamReader(echoSocket.getInputStream()))) {
            out.println(message);
            String answer = in.readLine();
            System.out.println(answer);
        }
    }
}
