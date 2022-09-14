-- Cleaning date_adedd

		alter table Show
		add added_date date

		update Show
		set added_date = convert(date,date_added)

		select  *
		from Show

		alter table show
		drop column date_added
