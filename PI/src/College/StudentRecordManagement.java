package College;

import java.util.LinkedList;
import java.util.Scanner;
public class StudentRecordManagement {
    LinkedList<Record> list;
    public StudentRecordManagement()
    {
        list = new LinkedList<>();
    }
    public void add(Record record)
    {
        if (!find(record.getIdNumber())) {
            list.add(record);
        }
        else {
            System.out.println(
                    "Inregistrarea exista deja");
        }
    }

    public boolean find(int idNimber)
    {
        for (Record l : list) {
            if (l.getIdNumber() == idNimber) {
                System.out.println(l);
                return true;
            }
        }
        return false;
    }
    public void delete(int recIdNumber)
    {
        Record recordDel = null;
        for (Record ll : list) {
            if (ll.getIdNumber() == recIdNumber) {
                recordDel = ll;
            }
        }
        if (recordDel == null) {
            System.out.println("ID Invalid");
        }
        else {
            list.remove(recordDel);
            System.out.println(
                    "Sters cu succes din lista");
        }
    }
    public Record findRecord(int idNumber)
    {
        for (Record l : list) {
            if (l.getIdNumber() == idNumber) {
                return l;
            }
        }
        return null;
    }
    public void update(int id, Scanner input)
    {

        if (find(id)) {
            Record rec = findRecord(id);
            System.out.print(
                    "Care este noul ID al studentului? ");
            int idNumber = input.nextInt();
            System.out.print(
                    "Care este noul numar de contact? ");
            int contactNumber = input.nextInt();
            input.nextLine();
            System.out.print(
                    "Care este noul nume al studentului? ");
            String name = input.nextLine();
            rec.setIdNumber(idNumber);
            rec.setName(name);
            rec.setContactNumber(contactNumber);
            System.out.println(
                    "Inregistrarea a fost modificata");
        }
        else {
            System.out.println(
                    "Inregistrarea nu a fost gasita in lista");
        }
    }
    public void display()
    {
        if (list.isEmpty()) {
            System.out.println("Lista nu are inregistrari\n");
        }
        for (Record record : list) {
            System.out.println(record.toString());
        }
    }
}