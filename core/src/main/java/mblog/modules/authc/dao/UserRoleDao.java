package mblog.modules.authc.dao;

import mblog.modules.authc.entity.UserRole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.Collection;
import java.util.List;

public interface UserRoleDao extends JpaRepository<UserRole, Long>, JpaSpecificationExecutor<UserRole> {
	List<UserRole> findAllByUserId(long userId);

	List<UserRole> findAllByUserIdIn(Collection<Long> userId);

	/**
	 * 清除权限
	 * @param userId 用户ID
	 */
	int deleteByUserId(long userId);
}
