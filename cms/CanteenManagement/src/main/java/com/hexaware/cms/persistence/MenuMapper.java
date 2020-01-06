package com.hexaware.cms.persistence;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hexaware.cms.model.Menu;

import org.skife.jdbi.v2.tweak.ResultSetMapper;
import org.skife.jdbi.v2.StatementContext;
/**
 * MenuMapper class used to fetch menu data from database.
 * @author hexware
 */
public class MenuMapper implements ResultSetMapper<Menu> {
    /**
     * @param idx the index
     * @param rs the resultset
     * @param ctx the context
     * @return the mapped customer object
     * @throws SQLException in case there is an error in fetching data from the resultset
     */
  public final Menu map(final int idx, final ResultSet rs, final StatementContext ctx) throws SQLException {
    /**
     * @return Menu
     */
  Menu menu = new Menu(rs.getInt("MEN_ID"), rs.getString("men_item"), rs.getDouble("men_calories"),
                rs.getDouble("MEN_PRICE"), rs.getString("MEN_SPECIALITY"));
  return menu;
}

}