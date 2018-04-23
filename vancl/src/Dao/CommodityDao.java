package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import entity.*;

public class CommodityDao extends BaseDao{
	public List<Commodity> getCommodityByCommodityCategoryName(String commodityCategoryName){
		List<Commodity> commodityList=new ArrayList<Commodity>();
		Connection conn=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		try {
			conn=this.getConnection();
			String sql="select * from commodityOld where commodityCategoryId in(select commodityCategoryId from commodityCategory where commodityCategoryName=?)";
			psm=conn.prepareStatement(sql);
			psm.setString(1, commodityCategoryName);
			rs=psm.executeQuery();
			while(rs.next())
			{
				Commodity commodity=new Commodity();
				commodity.setCommodityId(rs.getInt("commodityId"));
				commodity.setCommodityName(rs.getString("commodityName"));
				commodity.setCommodityCategoryId(rs.getInt("commodityCategoryId"));
				commodity.setCommodityPrice(rs.getDouble("commodityPrice"));
				commodity.setCommodityDate(rs.getString("commodityDate"));
				commodity.setCommodityPraise(rs.getString("commodityPraise"));
				commodity.setCommoditySales(rs.getString("commoditySales"));
				commodity.setCommodityImageUrl(rs.getString("commodityImageUrl"));
				commodity.setCommodityColor(rs.getString("commodityCol"));
				commodity.setCommoditySize(rs.getString("commoditySize"));
				commodityList.add(commodity);
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		finally
		{
			this.closeAll(conn, psm, rs);
		}
		return commodityList;
	}
	public Commodity getCommodityByCommodityId(int commodityId){
		Connection conn=null;
		PreparedStatement psm=null;
		ResultSet rs=null;
		Commodity commodity=null;
		try {
			conn=this.getConnection();
			String sql="select * from commodityOld where commodityId=?";
			psm=conn.prepareStatement(sql);
			psm.setInt(1, commodityId);
			rs=psm.executeQuery();
			while(rs.next())
			{
				commodity=new Commodity();
				commodity.setCommodityId(rs.getInt("commodityId"));
				commodity.setCommodityName(rs.getString("commodityName"));
				commodity.setCommodityCategoryId(rs.getInt("commodityCategoryId"));
				commodity.setCommodityPrice(rs.getDouble("commodityPrice"));
				commodity.setCommodityDate(rs.getString("commodityDate"));
				commodity.setCommodityPraise(rs.getString("commodityPraise"));
				commodity.setCommoditySales(rs.getString("commoditySales"));
				commodity.setCommodityImageUrl(rs.getString("commodityImageUrl"));
				commodity.setCommodityColor(rs.getString("commodityCol"));
				commodity.setCommoditySize(rs.getString("commoditySize"));
			}
		} catch (SQLException e) {
			System.out.print(e.getMessage());
		}
		finally
		{
			this.closeAll(conn, psm, rs);
		}
		return commodity;
	}
}
