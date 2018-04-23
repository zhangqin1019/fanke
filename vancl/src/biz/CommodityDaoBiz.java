package biz;

import java.util.List;

import entity.Commodity;
import Dao.*;

public class CommodityDaoBiz {
	CommodityDao commodityDao=new CommodityDao();
	public List<Commodity> getCommodityByCommodityCategoryName(String commodityCategoryName){
		return commodityDao.getCommodityByCommodityCategoryName(commodityCategoryName);
	}
	public Commodity getCommodityByCommodityId(int commodityId){
		return commodityDao.getCommodityByCommodityId(commodityId);
	}
}
