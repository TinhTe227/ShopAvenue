package vn.devpro.btck_web.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import vn.devpro.btck_web.dto.SearchModel;
import vn.devpro.btck_web.model.SaleOrder;

@Service
public class SaleOrderService extends BaseService<SaleOrder> {
	@Override
	public Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}
	
	public List<SaleOrder> findAllActive(){
		return super.executeNativeSql("SELECT * FROM tbl_user WHERE status=1");
	}
	
	@Transactional
	public void deleteSaleOrderById (int id) {
		super.deleteById(id);
	}
	
	//-------Search----------
	
	public List<SaleOrder> searchOrder (SearchModel orderSearch){
		// tao cau lenh truy van sql
			String sql = "select * from tbl_sale_order p where 1=1";
			
			//tim kiem voi status
			if(orderSearch.getStatus() != 2) { // co chon active or inactive
				sql += " and p.status="+ orderSearch.getStatus();
			}
			
			// tim kiem voi tieu chi keyword
				if(!StringUtils.isEmpty(orderSearch.getKeyword())) {
					String keyword = orderSearch.getKeyword().toLowerCase();
					sql += " and (LOWER(p.customer_name) like '%" +keyword + "%'" + "or LOWER(p.customer_address) like '%"+ keyword +"%')" ;
				}
				
				if(!StringUtils.isEmpty(orderSearch.getBeginDate()) && !StringUtils.isEmpty(orderSearch.getEndDate())) {
					String beginDate = orderSearch.getBeginDate();
					String endDate = orderSearch.getEndDate();
					sql += " and p.create_date between '" + beginDate + "' and '" + endDate + "'";
				}
			
			return super.executeNativeSql(sql);
	}
}
