import std.stdio;
import std.conv;
import std.string;
import core.stdc.stdlib;
import std.ascii;

public static string encrypt(string message, int key) {

    return message;

}

public static string decrypt(string message, int key) {

    return message;

}

void main() { 

    writef("Encryption Or Decryption? (E Or D): ");
    char e_or_d;

    try { 
        
        e_or_d = to!char(toUpper(chomp(readln()))); 
        if (e_or_d != 'E' && e_or_d != 'D') throw new Exception("!eord");

    } catch (Exception ex) {

        writef("Please Enter A Single Character Or E Or D!");
        exit(1);

    }

    writef("Key: ");
    int key;
    
    try {

        key = to!int(chomp(readln()));

        if (key <= 0 || key >= 30) throw new Exception("err");

    } catch (Exception ex) {

        writef("Please Enter A Number Or A Number Between 0 And 30!");
        exit(2);

    }

    writef("Message: ");
    string message = chomp(readln());

    if (message == null) {

        writef("Please Enter A Message!");
        exit(3);

    }

    if (e_or_d == 'E') {

        string encrypted = encrypt(message, key);
        writef("Encrypted Message: %s", encrypted);

    } else {

        string decrypted = decrypt(message, key);
        writef("Decrypted Message: %s", decrypted);

    }

    exit(0);

}