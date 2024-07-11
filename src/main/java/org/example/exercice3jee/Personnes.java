package org.example.exercice3jee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet (name = "personnes", value = "/personnes")
public class Personnes extends HttpServlet {
    private List<String> prenoms;
    private List<String> noms;
    private List<Integer> ages;

    public void init() throws ServletException{
        prenoms = new ArrayList<>();
        prenoms.add("Lucie");
        prenoms.add("Adam");
        prenoms.add("Margaux");
        noms = new ArrayList<>();
        noms.add("Rogé");
        noms.add("Gilabert");
        noms.add("Doisy");
        ages = new ArrayList<>();
        ages.add(30);
        ages.add(29);
        ages.add(28);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      req.setAttribute("prenoms", prenoms);
      req.setAttribute("noms", noms);
      req.setAttribute("ages", ages);
      req.getRequestDispatcher("/WEB-INF/personnes.jsp").forward(req, resp);  // On redirige vers la page prenoms.jsp
    }
}
