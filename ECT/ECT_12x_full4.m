%function out = model
%
% ECT_12x_full4.m
%%%
% Model exported on Jul 15 2019, 15:30 by COMSOL 5.3.0.260.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\Administrator\Documents\comsol');

model.label('Untitledect12_standard3.mph');

model.comments([native2unicode(hex2dec({'67' '2a'}), 'unicode')  native2unicode(hex2dec({'54' '7d'}), 'unicode')  native2unicode(hex2dec({'54' '0d'}), 'unicode') '\n\n']);

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 2);

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').lengthUnit('mm');
model.component('comp1').geom('geom1').create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('c1').set('pos', [0 0]);
model.component('comp1').geom('geom1').feature('c1').set('r', 50);
model.component('comp1').geom('geom1').create('c2', 'Circle');
model.component('comp1').geom('geom1').feature('c2').set('pos', [0 0]);
model.component('comp1').geom('geom1').feature('c2').set('r', 55);
model.component('comp1').geom('geom1').create('c3', 'Circle');
model.component('comp1').geom('geom1').feature('c3').set('pos', [0 0]);
model.component('comp1').geom('geom1').feature('c3').set('r', 55.5);
model.component('comp1').geom('geom1').create('pare1', 'PartitionEdges');
model.component('comp1').geom('geom1').feature('pare1').set('param', [0.025 0.308 0.358 0.641 0.691 0.975]);
model.component('comp1').geom('geom1').feature('pare1').selection('edge').set('c3(1)', [1 2 3 4]);
model.component('comp1').geom('geom1').create('del1', 'Delete');
model.component('comp1').geom('geom1').feature('del1').selection('input').set('pare1(1)', [1 2 5 6 9 10 13 14 15 16 19 20 23 24 27 28]);
model.component('comp1').geom('geom1').create('c4', 'Circle');
model.component('comp1').geom('geom1').feature('c4').set('pos', [0 0]);
model.component('comp1').geom('geom1').feature('c4').set('r', 90);
model.component('comp1').geom('geom1').create('c5', 'Circle');
model.component('comp1').geom('geom1').feature('c5').active(false);
model.component('comp1').geom('geom1').feature('c5').set('pos', [20 20]);
model.component('comp1').geom('geom1').feature('c5').set('r', 5);
model.component('comp1').geom('geom1').create('c6', 'Circle');
model.component('comp1').geom('geom1').feature('c6').active(false);
model.component('comp1').geom('geom1').feature('c6').set('pos', [15 -15]);
model.component('comp1').geom('geom1').feature('c6').set('r', 10);
model.component('comp1').geom('geom1').create('c8', 'Circle');
model.component('comp1').geom('geom1').feature('c8').active(false);
model.component('comp1').geom('geom1').feature('c8').set('pos', [-10 -25]);
model.component('comp1').geom('geom1').feature('c8').set('r', 8);
model.component('comp1').geom('geom1').create('c9', 'Circle');
model.component('comp1').geom('geom1').feature('c9').active(false);
model.component('comp1').geom('geom1').feature('c9').set('pos', [-25 15]);
model.component('comp1').geom('geom1').feature('c9').set('r', 8);
model.component('comp1').geom('geom1').create('c7', 'Circle');
model.component('comp1').geom('geom1').feature('c7').active(false);
model.component('comp1').geom('geom1').feature('c7').set('pos', [-30 -25]);
model.component('comp1').geom('geom1').feature('c7').set('r', 10);
model.component('comp1').geom('geom1').create('c10', 'Circle');
model.component('comp1').geom('geom1').feature('c10').active(false);
model.component('comp1').geom('geom1').feature('c10').set('pos', [20 20]);
model.component('comp1').geom('geom1').feature('c10').set('r', 5);
model.component('comp1').geom('geom1').create('c11', 'Circle');
model.component('comp1').geom('geom1').feature('c11').active(false);
model.component('comp1').geom('geom1').feature('c11').set('pos', [15 -15]);
model.component('comp1').geom('geom1').feature('c11').set('r', 5);
model.component('comp1').geom('geom1').create('c12', 'Circle');
model.component('comp1').geom('geom1').feature('c12').active(false);
model.component('comp1').geom('geom1').feature('c12').set('pos', [-25 15]);
model.component('comp1').geom('geom1').feature('c12').set('r', 5);
model.component('comp1').geom('geom1').create('c13', 'Circle');
model.component('comp1').geom('geom1').feature('c13').active(false);
model.component('comp1').geom('geom1').feature('c13').set('pos', [-10 -25]);
model.component('comp1').geom('geom1').feature('c13').set('r', 5);
model.component('comp1').geom('geom1').create('c14', 'Circle');
model.component('comp1').geom('geom1').feature('c14').active(false);
model.component('comp1').geom('geom1').feature('c14').set('pos', [10 35]);
model.component('comp1').geom('geom1').feature('c14').set('r', 5);
model.component('comp1').geom('geom1').create('c15', 'Circle');
model.component('comp1').geom('geom1').feature('c15').active(false);
model.component('comp1').geom('geom1').feature('c15').set('pos', [-15 35]);
model.component('comp1').geom('geom1').feature('c15').set('r', 5);
model.component('comp1').geom('geom1').create('c16', 'Circle');
model.component('comp1').geom('geom1').feature('c16').active(false);
model.component('comp1').geom('geom1').feature('c16').set('pos', [-25 -10]);
model.component('comp1').geom('geom1').feature('c16').set('r', 5);
model.component('comp1').geom('geom1').create('c17', 'Circle');
model.component('comp1').geom('geom1').feature('c17').active(false);
model.component('comp1').geom('geom1').feature('c17').set('pos', [30 -30]);
model.component('comp1').geom('geom1').feature('c17').set('r', 5);
model.component('comp1').geom('geom1').create('c18', 'Circle');
model.component('comp1').geom('geom1').feature('c18').active(false);
model.component('comp1').geom('geom1').feature('c18').set('pos', [20 20]);
model.component('comp1').geom('geom1').feature('c18').set('r', 2);
model.component('comp1').geom('geom1').create('c19', 'Circle');
model.component('comp1').geom('geom1').feature('c19').active(false);
model.component('comp1').geom('geom1').feature('c19').set('pos', [10 -25]);
model.component('comp1').geom('geom1').feature('c19').set('r', 2);
model.component('comp1').geom('geom1').create('c20', 'Circle');
model.component('comp1').geom('geom1').feature('c20').active(false);
model.component('comp1').geom('geom1').feature('c20').set('pos', [-30 -30]);
model.component('comp1').geom('geom1').feature('c20').set('r', 2);
model.component('comp1').geom('geom1').create('c21', 'Circle');
model.component('comp1').geom('geom1').feature('c21').active(false);
model.component('comp1').geom('geom1').feature('c21').set('pos', [-10 10]);
model.component('comp1').geom('geom1').feature('c21').set('r', 2);
model.component('comp1').geom('geom1').create('b1', 'BezierPolygon');
model.component('comp1').geom('geom1').feature('b1').active(false);
model.component('comp1').geom('geom1').feature('b1').set('p', [-45.99999794364 45.999998092651; -20 -20]);
model.component('comp1').geom('geom1').feature('b1').set('degree', [1]);
model.component('comp1').geom('geom1').feature('b1').set('w', [1 1]);
model.component('comp1').geom('geom1').create('b2', 'BezierPolygon');
model.component('comp1').geom('geom1').feature('b2').active(false);
model.component('comp1').geom('geom1').feature('b2').set('p', [-46.499997486105 45.99999794364; 20 20]);
model.component('comp1').geom('geom1').feature('b2').set('degree', [1]);
model.component('comp1').geom('geom1').feature('b2').set('w', [1 1]);
model.component('comp1').geom('geom1').create('b3', 'BezierPolygon');
model.component('comp1').geom('geom1').feature('b3').active(false);
model.component('comp1').geom('geom1').feature('b3').set('p', [-48.9 48.9; -11.2 -11.2]);
model.component('comp1').geom('geom1').feature('b3').set('degree', [1]);
model.component('comp1').geom('geom1').feature('b3').set('w', [1 1]);
model.component('comp1').geom('geom1').create('b4', 'BezierPolygon');
model.component('comp1').geom('geom1').feature('b4').active(false);
model.component('comp1').geom('geom1').feature('b4').set('p', [-39.4 39.6; 31 31]);
model.component('comp1').geom('geom1').feature('b4').set('degree', [1]);
model.component('comp1').geom('geom1').feature('b4').set('w', [1 1]);
model.component('comp1').geom('geom1').create('b5', 'BezierPolygon');
model.component('comp1').geom('geom1').feature('b5').active(false);
model.component('comp1').geom('geom1').feature('b5').set('p', [-46.95 47.1; 17.2 17.2]);
model.component('comp1').geom('geom1').feature('b5').set('degree', [1]);
model.component('comp1').geom('geom1').feature('b5').set('w', [1 1]);
model.component('comp1').geom('geom1').create('b6', 'BezierPolygon');
model.component('comp1').geom('geom1').feature('b6').active(false);
model.component('comp1').geom('geom1').feature('b6').set('p', [-46 45.999998092651; 20 20]);
model.component('comp1').geom('geom1').feature('b6').set('degree', [1]);
model.component('comp1').geom('geom1').feature('b6').set('w', [1 1]);
model.component('comp1').geom('geom1').create('c22', 'Circle');
model.component('comp1').geom('geom1').feature('c22').active(false);
model.component('comp1').geom('geom1').feature('c22').set('pos', [-10.6 10.6]);
model.component('comp1').geom('geom1').feature('c22').set('r', 7.5);
model.component('comp1').geom('geom1').create('c23', 'Circle');
model.component('comp1').geom('geom1').feature('c23').active(false);
model.component('comp1').geom('geom1').feature('c23').set('pos', [-28.28 28.28]);
model.component('comp1').geom('geom1').feature('c23').set('r', 5);
model.component('comp1').geom('geom1').create('c24', 'Circle');
model.component('comp1').geom('geom1').feature('c24').active(false);
model.component('comp1').geom('geom1').feature('c24').set('pos', [10.6 10.6]);
model.component('comp1').geom('geom1').feature('c24').set('r', 5);
model.component('comp1').geom('geom1').create('c25', 'Circle');
model.component('comp1').geom('geom1').feature('c25').active(false);
model.component('comp1').geom('geom1').feature('c25').set('pos', [28.28 28.28]);
model.component('comp1').geom('geom1').feature('c25').set('r', 5);
model.component('comp1').geom('geom1').create('c26', 'Circle');
model.component('comp1').geom('geom1').feature('c26').active(false);
model.component('comp1').geom('geom1').feature('c26').set('pos', [10.6 -10.6]);
model.component('comp1').geom('geom1').feature('c26').set('r', 5);
model.component('comp1').geom('geom1').create('c27', 'Circle');
model.component('comp1').geom('geom1').feature('c27').active(false);
model.component('comp1').geom('geom1').feature('c27').set('pos', [28.28 -28.28]);
model.component('comp1').geom('geom1').feature('c27').set('r', 7.5);
model.component('comp1').geom('geom1').create('c28', 'Circle');
model.component('comp1').geom('geom1').feature('c28').active(false);
model.component('comp1').geom('geom1').feature('c28').set('pos', [-35.57 -10.2]);
model.component('comp1').geom('geom1').feature('c28').set('r', 5);
model.component('comp1').geom('geom1').create('c29', 'Circle');
model.component('comp1').geom('geom1').feature('c29').active(false);
model.component('comp1').geom('geom1').feature('c29').set('pos', [-10.2 -35.57]);
model.component('comp1').geom('geom1').feature('c29').set('r', 5);
model.component('comp1').geom('geom1').create('c30', 'Circle');
model.component('comp1').geom('geom1').feature('c30').active(false);
model.component('comp1').geom('geom1').feature('c30').set('pos', [21 -21]);
model.component('comp1').geom('geom1').feature('c30').set('r', 20);
model.component('comp1').geom('geom1').create('c31', 'Circle');
model.component('comp1').geom('geom1').feature('c31').active(false);
model.component('comp1').geom('geom1').feature('c31').set('pos', [21 -21]);
model.component('comp1').geom('geom1').feature('c31').set('r', 18);
model.component('comp1').geom('geom1').create('c32', 'Circle');
model.component('comp1').geom('geom1').feature('c32').active(false);
model.component('comp1').geom('geom1').feature('c32').set('pos', [-28.28 28.28]);
model.component('comp1').geom('geom1').feature('c32').set('r', 7.5);
model.component('comp1').geom('geom1').create('c33', 'Circle');
model.component('comp1').geom('geom1').feature('c33').set('pos', [25 25]);
model.component('comp1').geom('geom1').feature('c33').set('r', 10);
model.component('comp1').geom('geom1').create('c34', 'Circle');
model.component('comp1').geom('geom1').feature('c34').set('pos', [0 0]);
model.component('comp1').geom('geom1').feature('c34').set('r', 10);
model.component('comp1').geom('geom1').create('c35', 'Circle');
model.component('comp1').geom('geom1').feature('c35').set('pos', [15 -30]);
model.component('comp1').geom('geom1').feature('c35').set('r', 10);
model.component('comp1').geom('geom1').create('c36', 'Circle');
model.component('comp1').geom('geom1').feature('c36').set('pos', [-35 0]);
model.component('comp1').geom('geom1').feature('c36').set('r', 10);
model.component('comp1').geom('geom1').run;

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material('mat1').info.create([native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ]);
model.component('comp1').material('mat1').propertyGroup('def').func.create('k', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('C', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('rho_gas_2', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('TD', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('eta', 'Piecewise');

model.component('comp1').physics.create('es', 'Electrostatics', 'geom1');
model.component('comp1').physics('es').create('term1', 'Terminal', 1);
model.component('comp1').physics('es').feature('term1').selection.set([28]);
model.component('comp1').physics('es').create('term2', 'Terminal', 1);
model.component('comp1').physics('es').feature('term2').selection.set([37]);
model.component('comp1').physics('es').create('term3', 'Terminal', 1);
model.component('comp1').physics('es').feature('term3').selection.set([39]);
model.component('comp1').physics('es').create('term4', 'Terminal', 1);
model.component('comp1').physics('es').feature('term4').selection.set([40]);
model.component('comp1').physics('es').create('term5', 'Terminal', 1);
model.component('comp1').physics('es').feature('term5').selection.set([38]);
model.component('comp1').physics('es').create('term6', 'Terminal', 1);
model.component('comp1').physics('es').feature('term6').selection.set([27]);
model.component('comp1').physics('es').create('term7', 'Terminal', 1);
model.component('comp1').physics('es').feature('term7').selection.set([16]);
model.component('comp1').physics('es').create('term8', 'Terminal', 1);
model.component('comp1').physics('es').feature('term8').selection.set([10]);
model.component('comp1').physics('es').create('term9', 'Terminal', 1);
model.component('comp1').physics('es').feature('term9').selection.set([3]);
model.component('comp1').physics('es').create('term10', 'Terminal', 1);
model.component('comp1').physics('es').feature('term10').selection.set([4]);
model.component('comp1').physics('es').create('term11', 'Terminal', 1);
model.component('comp1').physics('es').feature('term11').selection.set([9]);
model.component('comp1').physics('es').create('term12', 'Terminal', 1);
model.component('comp1').physics('es').feature('term12').selection.set([15]);
model.component('comp1').physics('es').create('ccn2', 'ChargeConservation', 2);
model.component('comp1').physics('es').feature('ccn2').selection.set([2 3 4 5 6 7]);
model.component('comp1').physics('es').create('ccn3', 'ChargeConservation', 2);

model.component('comp1').view('view1').axis.set('xmin', -176.44509887695312);
model.component('comp1').view('view1').axis.set('xmax', 176.44509887695312);
model.component('comp1').view('view1').axis.set('ymin', -99);
model.component('comp1').view('view1').axis.set('ymax', 99);
model.component('comp1').view('view1').axis.set('abstractviewlratio', -0.4802505373954773);
model.component('comp1').view('view1').axis.set('abstractviewrratio', 0.4802505373954773);
model.component('comp1').view('view1').axis.set('abstractviewbratio', -0.05000000074505806);
model.component('comp1').view('view1').axis.set('abstractviewtratio', 0.05000000074505806);
model.component('comp1').view('view1').axis.set('abstractviewxscale', 0.3815029263496399);
model.component('comp1').view('view1').axis.set('abstractviewyscale', 0.3815028965473175);

model.component('comp1').material('mat1').label('Air [gas]');
model.component('comp1').material('mat1').set('family', 'custom');
model.component('comp1').material('mat1').set('specular', 'custom');
model.component('comp1').material('mat1').set('customspecular', [0.9803921568627451 0.9803921568627451 0.9803921568627451]);
model.component('comp1').material('mat1').set('diffuse', 'custom');
model.component('comp1').material('mat1').set('customdiffuse', [0.9019607843137255 0.9019607843137255 1]);
model.component('comp1').material('mat1').set('ambient', 'custom');
model.component('comp1').material('mat1').set('customambient', [0.9019607843137255 0.9019607843137255 1]);
model.component('comp1').material('mat1').set('noise', true);
model.component('comp1').material('mat1').set('noisescale', 0.08);
model.component('comp1').material('mat1').set('noisefreq', 3);
model.component('comp1').material('mat1').set('lighting', 'simple');
model.component('comp1').material('mat1').info([native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ]).body('78.09 N2, 20.95 O2, 0.93 Ar, 0.039 CO2, trace others (vol%)');
model.component('comp1').material('mat1').propertyGroup('def').func('k').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('k').set('pieces', {'70.0' '1000.0' '-8.404165E-4+1.107418E-4*T^1-8.635537E-8*T^2+6.31411E-11*T^3-1.88168E-14*T^4'});
model.component('comp1').material('mat1').propertyGroup('def').func('C').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('C').set('pieces', {'100.0' '375.0' '1010.97+0.0439479*T^1-2.922398E-4*T^2+6.503467E-7*T^3'; '375.0' '1300.0' '1093.29-0.6355521*T^1+0.001633992*T^2-1.412935E-6*T^3+5.59492E-10*T^4-8.663072E-14*T^5'; '1300.0' '3000.0' '701.0807+0.8493867*T^1-5.846487E-4*T^2+2.302436E-7*T^3-4.846758E-11*T^4+4.23502E-15*T^5'});
model.component('comp1').material('mat1').propertyGroup('def').func('rho_gas_2').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('rho_gas_2').set('pieces', {'80.0' '3000.0' '352.716*T^-1'});
model.component('comp1').material('mat1').propertyGroup('def').func('TD').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('TD').set('pieces', {'300.0' '753.0' '1.713214E-4-1.204913E-6*T^1+2.839046E-9*T^2-1.532799E-12*T^3'; '753.0' '873.0' '0.00416418-1.191227E-5*T^1+8.863636E-9*T^2'});
model.component('comp1').material('mat1').propertyGroup('def').func('eta').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('eta').set('pieces', {'120.0' '600.0' '-1.132275E-7+7.94333E-8*T^1-7.197989E-11*T^2+5.158693E-14*T^3-1.592472E-17*T^4'; '600.0' '2150.0' '3.892629E-6+5.75387E-8*T^1-2.675811E-11*T^2+9.709691E-15*T^3-1.355541E-18*T^4'});
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', 'C(T[1/K])[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('def').set('density', 'rho_gas_2(T[1/K])[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('def').set('TD', 'TD(T[1/K])[m^2/s]');
model.component('comp1').material('mat1').propertyGroup('def').set('dynamicviscosity', 'eta(T[1/K])[Pa*s]');
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').addInput('temperature');

model.component('comp1').physics('es').feature('term1').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term1').set('V0', b(1,1));
model.component('comp1').physics('es').feature('term2').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term2').set('V0', b(1,2));
model.component('comp1').physics('es').feature('term3').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term3').set('V0', b(1,3));
model.component('comp1').physics('es').feature('term4').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term4').set('V0', b(1,4));
model.component('comp1').physics('es').feature('term5').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term5').set('V0', b(1,5));
model.component('comp1').physics('es').feature('term6').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term6').set('V0', b(1,6));
model.component('comp1').physics('es').feature('term7').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term7').set('V0', b(1,7));
model.component('comp1').physics('es').feature('term8').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term8').set('V0', b(1,8));
model.component('comp1').physics('es').feature('term9').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term9').set('V0', b(1,9));
model.component('comp1').physics('es').feature('term10').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term10').set('V0', b(1,10));
model.component('comp1').physics('es').feature('term11').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term11').set('V0', b(1,11));
model.component('comp1').physics('es').feature('term12').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term12').set('V0', b(1,12));
model.component('comp1').physics('es').feature('ccn2').set('epsilonr', [4.2; 0; 0; 0; 4.2; 0; 0; 0; 4.2]);
model.component('comp1').physics('es').feature('ccn3').set('epsilonr', [3; 0; 0; 0; 3; 0; 0; 0; 3]);
model.component('comp1').physics('es').feature('ccn2').set('epsilonr_mat', 'userdef');
model.component('comp1').physics('es').feature('ccn3').set('epsilonr_mat', 'userdef');

model.study.create('std1');
model.study('std1').create('stat', 'Stationary');

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').attach('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature.remove('fcDef');

model.result.create('pg1', 'PlotGroup2D');
model.result('pg1').create('surf1', 'Surface');

model.sol('sol1').attach('std1');
model.sol('sol1').runAll;

model.result('pg1').label([native2unicode(hex2dec({'75' '35'}), 'unicode')  native2unicode(hex2dec({'52' 'bf'}), 'unicode') ' (es)']);
model.result('pg1').set('frametype', 'spatial');
model.result('pg1').feature('surf1').set('resolution', 'normal');

%out = model;
