function [pulse, azerr, elerr] = getNearestUCDpulse(azimuth, elevation, h3D);
% Retrieves the impulse response that is closest to the specified
% azimuth and elevation in degrees.

if narin < 1,
    fprintf('Format: [pulse, azerr, elerr]');
    return;
end;

azimuth = pvaldeg(azimuth);

if (azimuth < -90) | (azimuth > 90),
    error('Invalid azimuth!');
end;

elevation = pvaldeg(elevation);
elmax = 50;
elindices = 1 : elmax;
elevations = -45 + 5.625 * (elindices - 1);
el = round((elevation + 45) / 5.625 + 1);
el = max(el, 1);
el = min(el, elmax);
elerr = pvaldeg(elevation - elevations(el));

azimuths = [-80 -65 -55 -45 : 5 : 45 55 65 80];
[azerr, az] = min(abs(pvaldeg(abs(azimuths - azimuth))));
pulse = squeeze(h3D(az, el, :));

end

function angle = pvaldeg(angle)
% Maps angle in degrees into the range [-90, 270).

if nargin < 1,
    fprintf('Wrong format');
    return;
end;

dtr = pi / 180;
angle = atan2(sin(angle * dtr), cos(angle * dtr)) / dtr;

if angle < -90,
    angle = angle + 360;
end;
end;

