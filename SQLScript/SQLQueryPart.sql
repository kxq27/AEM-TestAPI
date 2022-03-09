select Platform.Name, Platform.ID, Well.Name, Well.ID, well.Latitude, Well.Longitude, Well.CreatedAt, Well.UpdatedAt
from Platform inner join Well on Platform.ID = Well.PlatformID
where Well.UpdatedAt in (select MAX(UpdatedAt)  from Well group by PlatformID)