delete from block_device_mapping
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instance_actions_events
	where action_id in (
		select id
		from instance_actions
		where instance_uuid in (
			select uuid
			from instances
			where task_state = "deleting"));

delete from instance_actions
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instance_faults
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instance_extra
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instance_info_caches
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instance_system_metadata
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instance_metadata
	where instance_uuid in (
		select uuid
		from instances
		where task_state = "deleting");

delete from instances where task_state = "deleting";

