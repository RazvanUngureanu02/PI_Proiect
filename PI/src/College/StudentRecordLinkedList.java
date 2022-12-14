package College;
import java.util.Scanner;

public class StudentRecordLinkedList {

    public static void main(String[] args)
    {
        StudentRecordManagement hr = new StudentRecordManagement();
        Record record = new Record();
        record.setIdNumber(111);
        record.setContactNumber(411);
        record.setName("Marin");
        hr.add(record);
        Scanner input = new Scanner(System.in);
        int option = 0;
        do {
            menu();
            option = input.nextInt();
            switch (option) {
                case 1:
                    System.out.print(
                            "Care este id-ul studentului? ");
                    int idNumber = input.nextInt();
                    System.out.print(
                            "Care este numarul de contact? ");
                    int contactNumber = input.nextInt();
                    input.nextLine();
                    System.out.print(
                            "Care este numele studentului? ");
                    String name = input.nextLine();
                    record = new Record(name, idNumber,
                            contactNumber);
                    hr.add(record);
                    System.out.println(record.toString());
                    break;
                case 2:
                    System.out.print(
                            "Care este id-ul studentului? ");
                    int rId = input.nextInt();
                    hr.delete(rId);
                    break;
                case 3:
                    System.out.print(
                            "Care este id-ul studentului? ");
                    int rIdNo = input.nextInt();
                    hr.update(rIdNo, input);
                    break;
                case 4:
                    System.out.print(
                            "Care este id-ul studentului? ");
                    int bookId = input.nextInt();

                    if (!hr.find(bookId)) {
                        System.out.println(
                                "ID-ul studentului nu exista\n");
                    }
                    break;
                case 5:
                    hr.display();
                    break;
                case 0:
                    System.out.println(
                            "\nMultumim ca ati folosit programul!\n");
                    System.exit(0);
                    break;
                default:
                    System.out.println("\nInvalid input\n");
                    break;
            }
        }
        while (option != 9);
    }
    public static void menu()
    {
        System.out.println("MENIU");
        System.out.println("1: Adaugare Studenti");
        System.out.println("2: Stergere Studenti");
        System.out.println("3: Update Studenti");
        System.out.println("4: Cautare Studenti");
        System.out.println("5: Afisare Studenti");
        System.out.println("0: Exit");
        System.out.print("Alegeti: ");
    }
}
