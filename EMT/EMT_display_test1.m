%function out = model
%
% EMT_display_test1.m
%
% Model exported on Mar 8 2020, 16:58 by COMSOL 5.4.0.225.

import com.comsol.model.*
import com.comsol.model.util.*

model = ModelUtil.create('Model');

model.modelPath('C:\Users\Administrator\Documents\comsol');

model.label('ECTEMT_display.mph');

model.component.create('comp1', true);

model.component('comp1').geom.create('geom1', 2);

model.result.table.create('tbl1', 'Table');

model.component('comp1').func.create('im1', 'Image');
model.component('comp1').func('im1').set('filename', imfname);
model.component('comp1').func('im1').set('xmin', -47.5);
model.component('comp1').func('im1').set('xmax', 47.5);
model.component('comp1').func('im1').set('ymin', -47.5);
model.component('comp1').func('im1').set('ymax', 47.5);
model.component('comp1').func('im1').set('flipy', true);
model.component('comp1').func('im1').set('scaling', 'manual');
model.component('comp1').func('im1').set('manualexpr', 'r');
model.component('comp1').func('im1').set('interp', 'neighbor');
model.component('comp1').func('im1').set('extrap', 'value');
model.component('comp1').func('im1').set('argunit', 'mm');

model.component('comp1').mesh.create('mesh1');

model.component('comp1').geom('geom1').lengthUnit('mm');
model.component('comp1').geom('geom1').create('c1', 'Circle');
model.component('comp1').geom('geom1').feature('c1').set('r', 47.5);
model.component('comp1').geom('geom1').create('c2', 'Circle');
model.component('comp1').geom('geom1').feature('c2').set('r', 50.5);
model.component('comp1').geom('geom1').create('r1', 'Rectangle');
model.component('comp1').geom('geom1').feature('r1').label([native2unicode(hex2dec({'7e' 'bf'}), 'unicode')  native2unicode(hex2dec({'57' '08'}), 'unicode') '1' native2unicode(hex2dec({'4f' 'a7'}), 'unicode') ]);
model.component('comp1').geom('geom1').feature('r1').set('pos', [5.25 -52.68]);
model.component('comp1').geom('geom1').feature('r1').set('size', [7.75 0.35]);
model.component('comp1').geom('geom1').create('r2', 'Rectangle');
model.component('comp1').geom('geom1').feature('r2').label([native2unicode(hex2dec({'7e' 'bf'}), 'unicode')  native2unicode(hex2dec({'57' '08'}), 'unicode') '2' native2unicode(hex2dec({'4f' 'a7'}), 'unicode') ]);
model.component('comp1').geom('geom1').feature('r2').set('pos', [-13 -52.68]);
model.component('comp1').geom('geom1').feature('r2').set('size', [7.75 0.35]);
model.component('comp1').geom('geom1').create('r3', 'Rectangle');
model.component('comp1').geom('geom1').feature('r3').label([native2unicode(hex2dec({'8f' '6f'}), 'unicode')  native2unicode(hex2dec({'78' 'c1'}), 'unicode')  native2unicode(hex2dec({'72' '47'}), 'unicode') ]);
model.component('comp1').geom('geom1').feature('r3').set('pos', [-13.5 -53.58]);
model.component('comp1').geom('geom1').feature('r3').set('size', [27 0.9]);
model.component('comp1').geom('geom1').create('r4', 'Rectangle');
model.component('comp1').geom('geom1').feature('r4').label(['PCB' native2unicode(hex2dec({'67' '7f'}), 'unicode') ]);
model.component('comp1').geom('geom1').feature('r4').set('pos', [-13.5 -52.33]);
model.component('comp1').geom('geom1').feature('r4').set('size', [27 1.5]);
model.component('comp1').geom('geom1').create('r5', 'Rectangle');
model.component('comp1').geom('geom1').feature('r5').active(false);
model.component('comp1').geom('geom1').feature('r5').label([native2unicode(hex2dec({'94' 'dc'}), 'unicode')  native2unicode(hex2dec({'72' '47'}), 'unicode') ]);
model.component('comp1').geom('geom1').feature('r5').set('pos', [-13 -50.83]);
model.component('comp1').geom('geom1').feature('r5').set('size', [26 0.03]);
model.component('comp1').geom('geom1').create('rot1', 'Rotate');
model.component('comp1').geom('geom1').feature('rot1').set('keep', true);
model.component('comp1').geom('geom1').feature('rot1').setIndex('rot', '30', 0);
model.component('comp1').geom('geom1').feature('rot1').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot2', 'Rotate');
model.component('comp1').geom('geom1').feature('rot2').set('keep', true);
model.component('comp1').geom('geom1').feature('rot2').setIndex('rot', '60', 0);
model.component('comp1').geom('geom1').feature('rot2').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot3', 'Rotate');
model.component('comp1').geom('geom1').feature('rot3').set('keep', true);
model.component('comp1').geom('geom1').feature('rot3').setIndex('rot', '90', 0);
model.component('comp1').geom('geom1').feature('rot3').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot4', 'Rotate');
model.component('comp1').geom('geom1').feature('rot4').set('keep', true);
model.component('comp1').geom('geom1').feature('rot4').setIndex('rot', '120', 0);
model.component('comp1').geom('geom1').feature('rot4').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot5', 'Rotate');
model.component('comp1').geom('geom1').feature('rot5').set('keep', true);
model.component('comp1').geom('geom1').feature('rot5').setIndex('rot', '150', 0);
model.component('comp1').geom('geom1').feature('rot5').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot6', 'Rotate');
model.component('comp1').geom('geom1').feature('rot6').set('keep', true);
model.component('comp1').geom('geom1').feature('rot6').setIndex('rot', '180', 0);
model.component('comp1').geom('geom1').feature('rot6').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot7', 'Rotate');
model.component('comp1').geom('geom1').feature('rot7').set('keep', true);
model.component('comp1').geom('geom1').feature('rot7').setIndex('rot', '210', 0);
model.component('comp1').geom('geom1').feature('rot7').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot8', 'Rotate');
model.component('comp1').geom('geom1').feature('rot8').set('keep', true);
model.component('comp1').geom('geom1').feature('rot8').setIndex('rot', '240', 0);
model.component('comp1').geom('geom1').feature('rot8').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot9', 'Rotate');
model.component('comp1').geom('geom1').feature('rot9').set('keep', true);
model.component('comp1').geom('geom1').feature('rot9').setIndex('rot', '270', 0);
model.component('comp1').geom('geom1').feature('rot9').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot10', 'Rotate');
model.component('comp1').geom('geom1').feature('rot10').set('keep', true);
model.component('comp1').geom('geom1').feature('rot10').setIndex('rot', '300', 0);
model.component('comp1').geom('geom1').feature('rot10').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('rot11', 'Rotate');
model.component('comp1').geom('geom1').feature('rot11').set('keep', true);
model.component('comp1').geom('geom1').feature('rot11').setIndex('rot', '330', 0);
model.component('comp1').geom('geom1').feature('rot11').selection('input').set({'r1' 'r2' 'r3' 'r4' 'r5'});
model.component('comp1').geom('geom1').create('c3', 'Circle');
model.component('comp1').geom('geom1').feature('c3').set('r', 66.5);
model.component('comp1').geom('geom1').run;

model.component('comp1').material.create('mat1', 'Common');
model.component('comp1').material.create('mat2', 'Common');
model.component('comp1').material.create('mat3', 'Common');
model.component('comp1').material.create('mat4', 'Common');
model.component('comp1').material.create('mat5', 'Common');
model.component('comp1').material.create('mat6', 'Common');
model.component('comp1').material.create('mat7', 'Common');
model.component('comp1').material.create('mat8', 'Common');
model.component('comp1').material.create('mat10', 'Common');
model.component('comp1').material.create('mat9', 'Common');
model.component('comp1').material('mat1').propertyGroup('def').func.create('eta', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('Cp', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('rho', 'Analytic');
model.component('comp1').material('mat1').propertyGroup('def').func.create('k', 'Piecewise');
model.component('comp1').material('mat1').propertyGroup('def').func.create('cs', 'Analytic');
model.component('comp1').material('mat1').propertyGroup.create('RefractiveIndex', [native2unicode(hex2dec({'62' '98'}), 'unicode')  native2unicode(hex2dec({'5c' '04'}), 'unicode')  native2unicode(hex2dec({'73' '87'}), 'unicode') ]);
model.component('comp1').material('mat2').selection.set([5 7 9 10 15 16 21 22 25 26 31 32 35 36 41 42 45 46 49 50 55 56 58 60]);
model.component('comp1').material('mat2').propertyGroup.create('Enu', [native2unicode(hex2dec({'67' '68'}), 'unicode')  native2unicode(hex2dec({'6c' '0f'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'54' '8c'}), 'unicode')  native2unicode(hex2dec({'6c' 'ca'}), 'unicode')  native2unicode(hex2dec({'67' '7e'}), 'unicode')  native2unicode(hex2dec({'6b' 'd4'}), 'unicode') ]);
model.component('comp1').material('mat2').propertyGroup.create('linzRes', [native2unicode(hex2dec({'7e' 'bf'}), 'unicode')  native2unicode(hex2dec({'60' '27'}), 'unicode')  native2unicode(hex2dec({'75' '35'}), 'unicode')  native2unicode(hex2dec({'96' '3b'}), 'unicode')  native2unicode(hex2dec({'73' '87'}), 'unicode') ]);
model.component('comp1').material('mat3').selection.set([62]);
model.component('comp1').material('mat3').propertyGroup.create('RefractiveIndex', [native2unicode(hex2dec({'62' '98'}), 'unicode')  native2unicode(hex2dec({'5c' '04'}), 'unicode')  native2unicode(hex2dec({'73' '87'}), 'unicode') ]);
model.component('comp1').material('mat4').selection.set([2 3 4 17 18 27 30 39 40 51 52 61]);
model.component('comp1').material('mat4').propertyGroup.create('BHCurve', ['BH ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('BHCurve').func.create('BH', 'Interpolation');
model.component('comp1').material('mat4').propertyGroup.create('HBCurve', ['HB ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('HBCurve').func.create('HB', 'Interpolation');
model.component('comp1').material('mat4').propertyGroup.create('EffectiveBHCurve', [native2unicode(hex2dec({'7b' '49'}), 'unicode')  native2unicode(hex2dec({'65' '48'}), 'unicode') ' BH ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').func.create('BHeff', 'Interpolation');
model.component('comp1').material('mat4').propertyGroup.create('EffectiveHBCurve', [native2unicode(hex2dec({'7b' '49'}), 'unicode')  native2unicode(hex2dec({'65' '48'}), 'unicode') ' HB ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('EffectiveHBCurve').func.create('HBeff', 'Interpolation');
model.component('comp1').material('mat5').propertyGroup.create('Enu', [native2unicode(hex2dec({'67' '68'}), 'unicode')  native2unicode(hex2dec({'6c' '0f'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'54' '8c'}), 'unicode')  native2unicode(hex2dec({'6c' 'ca'}), 'unicode')  native2unicode(hex2dec({'67' '7e'}), 'unicode')  native2unicode(hex2dec({'6b' 'd4'}), 'unicode') ]);
model.component('comp1').material('mat6').selection.set([8 11 12 19 20 28 29 37 38 47 48 57]);
model.component('comp1').material('mat7').propertyGroup('def').func.create('k_solid_bulk_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('res_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('alpha_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('C_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('sigma_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('HC_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('VP_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('def').func.create('rho_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup.create('ThermalExpansion', [native2unicode(hex2dec({'70' 'ed'}), 'unicode')  native2unicode(hex2dec({'81' 'a8'}), 'unicode')  native2unicode(hex2dec({'80' 'c0'}), 'unicode') ]);
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').func.create('dL_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').func.create('CTE_solid_1', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup.create('Enu', [native2unicode(hex2dec({'67' '68'}), 'unicode')  native2unicode(hex2dec({'6c' '0f'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'54' '8c'}), 'unicode')  native2unicode(hex2dec({'6c' 'ca'}), 'unicode')  native2unicode(hex2dec({'67' '7e'}), 'unicode')  native2unicode(hex2dec({'6b' 'd4'}), 'unicode') ]);
model.component('comp1').material('mat7').propertyGroup('Enu').func.create('E', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('Enu').func.create('nu', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup.create('KG', [native2unicode(hex2dec({'4f' '53'}), 'unicode')  native2unicode(hex2dec({'79' 'ef'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'54' '8c'}), 'unicode')  native2unicode(hex2dec({'52' '6a'}), 'unicode')  native2unicode(hex2dec({'52' '07'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ]);
model.component('comp1').material('mat7').propertyGroup('KG').func.create('mu', 'Piecewise');
model.component('comp1').material('mat7').propertyGroup('KG').func.create('kappa', 'Piecewise');
model.component('comp1').material('mat8').info.create([native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ]);
model.component('comp1').material('mat8').propertyGroup('def').func.create('alpha', 'Piecewise');
model.component('comp1').material('mat8').propertyGroup('def').func.create('C', 'Piecewise');
model.component('comp1').material('mat8').propertyGroup('def').func.create('HC', 'Piecewise');
model.component('comp1').material('mat8').propertyGroup('def').func.create('rho', 'Piecewise');
model.component('comp1').material('mat8').propertyGroup.create('ThermalExpansion', [native2unicode(hex2dec({'70' 'ed'}), 'unicode')  native2unicode(hex2dec({'81' 'a8'}), 'unicode')  native2unicode(hex2dec({'80' 'c0'}), 'unicode') ]);
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').func.create('dL', 'Piecewise');
model.component('comp1').material('mat10').info.create([native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ]);
model.component('comp1').material('mat10').propertyGroup('def').func.create('k_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('alpha_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('C_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('HC_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('VP_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('rho_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('TD_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('def').func.create('eta_liquid_1', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup.create('ThermalExpansion', [native2unicode(hex2dec({'70' 'ed'}), 'unicode')  native2unicode(hex2dec({'81' 'a8'}), 'unicode')  native2unicode(hex2dec({'80' 'c0'}), 'unicode') ]);
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').func.create('dL_liquid_2', 'Piecewise');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').func.create('CTE_liquid_2', 'Piecewise');
model.component('comp1').material('mat9').selection.set([63]);

model.component('comp1').physics.create('mf', 'InductionCurrents', 'geom1');
model.component('comp1').physics('mf').create('coil1', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil1').selection.set([31 35]);
model.component('comp1').physics('mf').feature('coil1').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil1').feature('rcd1').selection.set([35]);
model.component('comp1').physics('mf').create('coil2', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil2').selection.set([21 25]);
model.component('comp1').physics('mf').feature('coil2').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil2').feature('rcd1').selection.set([25]);
model.component('comp1').physics('mf').create('coil3', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil3').selection.set([9 15]);
model.component('comp1').physics('mf').feature('coil3').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil3').feature('rcd1').selection.set([15]);
model.component('comp1').physics('mf').create('coil4', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil4').selection.set([5 7]);
model.component('comp1').physics('mf').feature('coil4').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil4').feature('rcd1').selection.set([5]);
model.component('comp1').physics('mf').create('coil5', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil5').selection.set([10 16]);
model.component('comp1').physics('mf').feature('coil5').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil5').feature('rcd1').selection.set([10]);
model.component('comp1').physics('mf').create('coil6', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil6').selection.set([22 26]);
model.component('comp1').physics('mf').feature('coil6').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil6').feature('rcd1').selection.set([22]);
model.component('comp1').physics('mf').create('coil7', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil7').selection.set([32 36]);
model.component('comp1').physics('mf').feature('coil7').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil7').feature('rcd1').selection.set([32]);
model.component('comp1').physics('mf').create('coil8', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil8').selection.set([42 46]);
model.component('comp1').physics('mf').feature('coil8').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil8').feature('rcd1').selection.set([42]);
model.component('comp1').physics('mf').create('coil9', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil9').selection.set([50 56]);
model.component('comp1').physics('mf').feature('coil9').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil9').feature('rcd1').selection.set([50]);
model.component('comp1').physics('mf').create('coil10', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil10').selection.set([58 60]);
model.component('comp1').physics('mf').feature('coil10').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil10').feature('rcd1').selection.set([60]);
model.component('comp1').physics('mf').create('coil11', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil11').selection.set([49 55]);
model.component('comp1').physics('mf').feature('coil11').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil11').feature('rcd1').selection.set([55]);
model.component('comp1').physics('mf').create('coil12', 'Coil', 2);
model.component('comp1').physics('mf').feature('coil12').selection.set([41 45]);
model.component('comp1').physics('mf').feature('coil12').create('rcd1', 'ReverseCoilGroupDomain', 2);
model.component('comp1').physics('mf').feature('coil12').feature('rcd1').selection.set([45]);
model.component('comp1').physics.create('es', 'Electrostatics', 'geom1');
model.component('comp1').physics('es').create('term1', 'Terminal', 1);
model.component('comp1').physics('es').feature('term1').selection.set([106]);
model.component('comp1').physics('es').create('term2', 'Terminal', 1);
model.component('comp1').physics('es').feature('term2').selection.set([77]);
model.component('comp1').physics('es').create('term3', 'Terminal', 1);
model.component('comp1').physics('es').feature('term3').selection.set([37]);
model.component('comp1').physics('es').create('term4', 'Terminal', 1);
model.component('comp1').physics('es').feature('term4').selection.set([36]);
model.component('comp1').physics('es').create('term5', 'Terminal', 1);
model.component('comp1').physics('es').feature('term5').selection.set([38]);
model.component('comp1').physics('es').create('term6', 'Terminal', 1);
model.component('comp1').physics('es').feature('term6').selection.set([78]);
model.component('comp1').physics('es').create('term7', 'Terminal', 1);
model.component('comp1').physics('es').feature('term7').selection.set([108]);
model.component('comp1').physics('es').create('term8', 'Terminal', 1);
model.component('comp1').physics('es').feature('term8').selection.set([144]);
model.component('comp1').physics('es').create('term9', 'Terminal', 1);
model.component('comp1').physics('es').feature('term9').selection.set([176]);
model.component('comp1').physics('es').create('term10', 'Terminal', 1);
model.component('comp1').physics('es').feature('term10').selection.set([213]);
model.component('comp1').physics('es').create('term11', 'Terminal', 1);
model.component('comp1').physics('es').feature('term11').selection.set([174]);
model.component('comp1').physics('es').create('term12', 'Terminal', 1);
model.component('comp1').physics('es').feature('term12').selection.set([142]);
model.component('comp1').physics('es').create('ccn2', 'ChargeConservation', 2);
model.component('comp1').physics('es').feature('ccn2').selection.set([63]);

model.component('comp1').mesh('mesh1').autoMeshSize(2);

model.result.table('tbl1').comments([native2unicode(hex2dec({'51' '68'}), 'unicode')  native2unicode(hex2dec({'5c' '40'}), 'unicode')  native2unicode(hex2dec({'8b' 'a1'}), 'unicode')  native2unicode(hex2dec({'7b' '97'}), 'unicode') ' 1 (es.C14, es.C24, es.C34, es.C54, es.C64, es.C74, es.C84, es.C94, es.C10_4, es.C11_4, es.C12_4)']);

model.component('comp1').view('view1').axis.set('xmin', -86.55231475830078);
model.component('comp1').view('view1').axis.set('xmax', 86.55231475830078);
model.component('comp1').view('view1').axis.set('ymin', -69.82500457763672);
model.component('comp1').view('view1').axis.set('ymax', 69.82500457763672);

model.component('comp1').material('mat1').label('Air');
model.component('comp1').material('mat1').set('family', 'air');
model.component('comp1').material('mat1').propertyGroup('def').func('eta').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('eta').set('pieces', {'200.0' '1600.0' '-8.38278E-7+8.35717342E-8*T^1-7.69429583E-11*T^2+4.6437266E-14*T^3-1.06585607E-17*T^4'});
model.component('comp1').material('mat1').propertyGroup('def').func('Cp').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('Cp').set('pieces', {'200.0' '1600.0' '1047.63657-0.372589265*T^1+9.45304214E-4*T^2-6.02409443E-7*T^3+1.2858961E-10*T^4'});
model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('expr', 'pA*0.02897/8.314/T');
model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('args', {'pA' 'T'});
model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('dermethod', 'manual');
model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('argders', {'pA' 'd(pA*0.02897/8.314/T,pA)'; 'T' 'd(pA*0.02897/8.314/T,T)'});
model.component('comp1').material('mat1').propertyGroup('def').func('rho').set('plotargs', {'pA' '0' '1'; 'T' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').func('k').set('arg', 'T');
model.component('comp1').material('mat1').propertyGroup('def').func('k').set('pieces', {'200.0' '1600.0' '-0.00227583562+1.15480022E-4*T^1-7.90252856E-8*T^2+4.11702505E-11*T^3-7.43864331E-15*T^4'});
model.component('comp1').material('mat1').propertyGroup('def').func('cs').set('expr', 'sqrt(1.4*287*T)');
model.component('comp1').material('mat1').propertyGroup('def').func('cs').set('args', {'T'});
model.component('comp1').material('mat1').propertyGroup('def').func('cs').set('dermethod', 'manual');
model.component('comp1').material('mat1').propertyGroup('def').func('cs').set('argders', {'T' 'd(sqrt(1.4*287*T),T)'});
model.component('comp1').material('mat1').propertyGroup('def').func('cs').set('plotargs', {'T' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('def').set('dynamicviscosity', 'eta(T[1/K])[Pa*s]');
model.component('comp1').material('mat1').propertyGroup('def').set('ratioofspecificheat', '1.4');
model.component('comp1').material('mat1').propertyGroup('def').set('electricconductivity', {'0[S/m]' '0' '0' '0' '0[S/m]' '0' '0' '0' '0[S/m]'});
model.component('comp1').material('mat1').propertyGroup('def').set('heatcapacity', 'Cp(T[1/K])[J/(kg*K)]');
model.component('comp1').material('mat1').propertyGroup('def').set('density', 'rho(pA[1/Pa],T[1/K])[kg/m^3]');
model.component('comp1').material('mat1').propertyGroup('def').set('thermalconductivity', {'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]' '0' '0' '0' 'k(T[1/K])[W/(m*K)]'});
model.component('comp1').material('mat1').propertyGroup('def').set('soundspeed', 'cs(T[1/K])[m/s]');
model.component('comp1').material('mat1').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat1').propertyGroup('def').addInput('pressure');
model.component('comp1').material('mat1').propertyGroup('RefractiveIndex').set('n', '');
model.component('comp1').material('mat1').propertyGroup('RefractiveIndex').set('ki', '');
model.component('comp1').material('mat1').propertyGroup('RefractiveIndex').set('n', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat1').propertyGroup('RefractiveIndex').set('ki', {'0' '0' '0' '0' '0' '0' '0' '0' '0'});
model.component('comp1').material('mat2').label('Copper');
model.component('comp1').material('mat2').set('family', 'copper');
model.component('comp1').material('mat2').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('electricconductivity', {'5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]' '0' '0' '0' '5.998e7[S/m]'});
model.component('comp1').material('mat2').propertyGroup('def').set('thermalexpansioncoefficient', {'17e-6[1/K]' '0' '0' '0' '17e-6[1/K]' '0' '0' '0' '17e-6[1/K]'});
model.component('comp1').material('mat2').propertyGroup('def').set('heatcapacity', '385[J/(kg*K)]');
model.component('comp1').material('mat2').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat2').propertyGroup('def').set('density', '8960[kg/m^3]');
model.component('comp1').material('mat2').propertyGroup('def').set('thermalconductivity', {'400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]' '0' '0' '0' '400[W/(m*K)]'});
model.component('comp1').material('mat2').propertyGroup('Enu').set('youngsmodulus', '110e9[Pa]');
model.component('comp1').material('mat2').propertyGroup('Enu').set('poissonsratio', '0.35');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('rho0', '1.72e-8[ohm*m]');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('alpha', '0.0039[1/K]');
model.component('comp1').material('mat2').propertyGroup('linzRes').set('Tref', '298[K]');
model.component('comp1').material('mat2').propertyGroup('linzRes').addInput('temperature');
model.component('comp1').material('mat3').label('Glass (quartz)');
model.component('comp1').material('mat3').set('family', 'custom');
model.component('comp1').material('mat3').set('specular', 'custom');
model.component('comp1').material('mat3').set('diffuse', 'custom');
model.component('comp1').material('mat3').set('ambient', 'custom');
model.component('comp1').material('mat3').set('noise', true);
model.component('comp1').material('mat3').set('noisefreq', 1);
model.component('comp1').material('mat3').set('lighting', 'cooktorrance');
model.component('comp1').material('mat3').set('fresnel', 0.99);
model.component('comp1').material('mat3').set('roughness', 0.02);
model.component('comp1').material('mat3').set('customspecular', [1 1 1]);
model.component('comp1').material('mat3').set('customdiffuse', [1 1 1]);
model.component('comp1').material('mat3').set('customambient', [1 1 1]);
model.component('comp1').material('mat3').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat3').propertyGroup('def').set('electricconductivity', {'1e-14[S/m]' '0' '0' '0' '1e-14[S/m]' '0' '0' '0' '1e-14[S/m]'});
model.component('comp1').material('mat3').propertyGroup('def').set('relpermittivity', {'4.2' '0' '0' '0' '4.2' '0' '0' '0' '4.2'});
model.component('comp1').material('mat3').propertyGroup('def').set('density', '2210[kg/m^3]');
model.component('comp1').material('mat3').propertyGroup('def').set('thermalconductivity', {'1.4[W/(m*K)]' '0' '0' '0' '1.4[W/(m*K)]' '0' '0' '0' '1.4[W/(m*K)]'});
model.component('comp1').material('mat3').propertyGroup('def').set('heatcapacity', '730[J/(kg*K)]');
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('n', '');
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('ki', '');
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('n', {'1.5' '0' '0' '0' '1.5' '0' '0' '0' '1.5'});
model.component('comp1').material('mat3').propertyGroup('RefractiveIndex').set('ki', {'0' '0' '0' '0' '0' '0' '0' '0' '0'});
model.component('comp1').material('mat4').label('Soft Iron (without losses)');
model.component('comp1').material('mat4').set('family', 'iron');
model.component('comp1').material('mat4').propertyGroup('def').set('electricconductivity', {'0[S/m]' '0' '0' '0' '0[S/m]' '0' '0' '0' '0[S/m]'});
model.component('comp1').material('mat4').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat4').propertyGroup('def').set('relpermeability', {'1000' '0' '0' '0' '1000' '0' '0' '0' '1000'});
model.component('comp1').material('mat4').propertyGroup('BHCurve').label(['BH ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('BHCurve').func('BH').set('table', {'0' '0';  ...
'663.146' '1';  ...
'1067.5' '1.1';  ...
'1705.23' '1.2';  ...
'2463.11' '1.3';  ...
'3841.67' '1.4';  ...
'5425.74' '1.5';  ...
'7957.75' '1.6';  ...
'12298.3' '1.7';  ...
'20462.8' '1.8';  ...
'32169.6' '1.9';  ...
'61213.4' '2.0';  ...
'111408' '2.1';  ...
'175070' '2.2';  ...
'261469' '2.3';  ...
'318310' '2.4'});
model.component('comp1').material('mat4').propertyGroup('BHCurve').func('BH').set('extrap', 'linear');
model.component('comp1').material('mat4').propertyGroup('BHCurve').func('BH').set('defineinv', true);
model.component('comp1').material('mat4').propertyGroup('BHCurve').func('BH').set('defineprimfun', true);
model.component('comp1').material('mat4').propertyGroup('BHCurve').set('normB', '');
model.component('comp1').material('mat4').propertyGroup('BHCurve').set('normH', '');
model.component('comp1').material('mat4').propertyGroup('BHCurve').set('Wpm', '');
model.component('comp1').material('mat4').propertyGroup('BHCurve').set('normB', 'BH(normHin[m/A])[T]');
model.component('comp1').material('mat4').propertyGroup('BHCurve').set('normH', 'BH_inv(normBin[1/T])[A/m]');
model.component('comp1').material('mat4').propertyGroup('BHCurve').set('Wpm', 'BH_prim(normHin[m/A])[J/m^3]');
model.component('comp1').material('mat4').propertyGroup('BHCurve').addInput('magneticfield');
model.component('comp1').material('mat4').propertyGroup('BHCurve').addInput('magneticfluxdensity');
model.component('comp1').material('mat4').propertyGroup('HBCurve').label(['HB ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('HBCurve').func('HB').set('table', {'0' '0';  ...
'1' '663.146';  ...
'1.1' '1067.5';  ...
'1.2' '1705.23';  ...
'1.3' '2463.11';  ...
'1.4' '3841.67';  ...
'1.5' '5425.74';  ...
'1.6' '7957.75';  ...
'1.7' '12298.3';  ...
'1.8' '20462.8';  ...
'1.9' '32169.6';  ...
'2.0' '61213.4';  ...
'2.1' '111408';  ...
'2.2' '175070';  ...
'2.3' '261469';  ...
'2.4' '318310'});
model.component('comp1').material('mat4').propertyGroup('HBCurve').func('HB').set('extrap', 'linear');
model.component('comp1').material('mat4').propertyGroup('HBCurve').set('normH', 'HB(normB[1/T])[A/m]');
model.component('comp1').material('mat4').propertyGroup('HBCurve').addInput('magneticfluxdensity');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').label([native2unicode(hex2dec({'7b' '49'}), 'unicode')  native2unicode(hex2dec({'65' '48'}), 'unicode') ' BH ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').func('BHeff').set('table', {'0' '0';  ...
'663.146' '1';  ...
'1067.5' '1.4943906486860214';  ...
'1705.23' '1.941630073817125';  ...
'2463.11' '2.257619494050335';  ...
'3841.67' '2.729755059668001';  ...
'5425.74' '2.8756651489647296';  ...
'7957.75' '3.149029234016385';  ...
'12298.3' '3.4529372126833744';  ...
'20462.8' '3.7845615956017395';  ...
'32169.6' '4.060195910283011';  ...
'61213.4' '4.421777266072753';  ...
'111408' '4.721954005107204';  ...
'175070' '4.941198649690261';  ...
'261469' '5.1446599438425515';  ...
'318310' '5.253346039640234'});
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').func('BHeff').set('extrap', 'linear');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').func('BHeff').set('defineinv', true);
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').set('normBeff', '');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').set('normHeff', '');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').set('normBeff', 'BHeff(normHeffin[m/A])[T]');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').set('normHeff', 'BHeff_inv(normBeffin[1/T])[A/m]');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').addInput('magneticfield');
model.component('comp1').material('mat4').propertyGroup('EffectiveBHCurve').addInput('magneticfluxdensity');
model.component('comp1').material('mat4').propertyGroup('EffectiveHBCurve').label([native2unicode(hex2dec({'7b' '49'}), 'unicode')  native2unicode(hex2dec({'65' '48'}), 'unicode') ' HB ' native2unicode(hex2dec({'66' 'f2'}), 'unicode')  native2unicode(hex2dec({'7e' 'bf'}), 'unicode') ]);
model.component('comp1').material('mat4').propertyGroup('EffectiveHBCurve').func('HBeff').set('table', {'0' '0';  ...
'1' '663.146';  ...
'1.4943906486860214' '1067.5';  ...
'1.941630073817125' '1705.23';  ...
'2.257619494050335' '2463.11';  ...
'2.729755059668001' '3841.67';  ...
'2.8756651489647296' '5425.74';  ...
'3.149029234016385' '7957.75';  ...
'3.4529372126833744' '12298.3';  ...
'3.7845615956017395' '20462.8';  ...
'4.060195910283011' '32169.6';  ...
'4.421777266072753' '61213.4';  ...
'4.721954005107204' '111408';  ...
'4.941198649690261' '175070';  ...
'5.1446599438425515' '261469';  ...
'5.253346039640234' '318310'});
model.component('comp1').material('mat4').propertyGroup('EffectiveHBCurve').func('HBeff').set('extrap', 'linear');
model.component('comp1').material('mat4').propertyGroup('EffectiveHBCurve').set('normHeff', 'HBeff(normBeff[1/T])[A/m]');
model.component('comp1').material('mat4').propertyGroup('EffectiveHBCurve').addInput('magneticfluxdensity');
model.component('comp1').material('mat5').label('Iron');
model.component('comp1').material('mat5').set('family', 'iron');
model.component('comp1').material('mat5').propertyGroup('def').set('relpermeability', {'4000' '0' '0' '0' '4000' '0' '0' '0' '4000'});
model.component('comp1').material('mat5').propertyGroup('def').set('electricconductivity', {'1.12e7[S/m]' '0' '0' '0' '1.12e7[S/m]' '0' '0' '0' '1.12e7[S/m]'});
model.component('comp1').material('mat5').propertyGroup('def').set('thermalexpansioncoefficient', {'12.2e-6[1/K]' '0' '0' '0' '12.2e-6[1/K]' '0' '0' '0' '12.2e-6[1/K]'});
model.component('comp1').material('mat5').propertyGroup('def').set('heatcapacity', '440[J/(kg*K)]');
model.component('comp1').material('mat5').propertyGroup('def').set('relpermittivity', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat5').propertyGroup('def').set('density', '7870[kg/m^3]');
model.component('comp1').material('mat5').propertyGroup('def').set('thermalconductivity', {'76.2[W/(m*K)]' '0' '0' '0' '76.2[W/(m*K)]' '0' '0' '0' '76.2[W/(m*K)]'});
model.component('comp1').material('mat5').propertyGroup('Enu').set('youngsmodulus', '200e9[Pa]');
model.component('comp1').material('mat5').propertyGroup('Enu').set('poissonsratio', '0.29');
model.component('comp1').material('mat6').propertyGroup('def').set('electricconductivity', {'0.004' '0' '0' '0' '0.004' '0' '0' '0' '0.004'});
model.component('comp1').material('mat6').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat6').propertyGroup('def').set('relpermittivity', {'4.5' '0' '0' '0' '4.5' '0' '0' '0' '4.5'});
model.component('comp1').material('mat7').label('Aluminum [solid,bulk]');
model.component('comp1').material('mat7').set('family', 'aluminum');
model.component('comp1').material('mat7').propertyGroup('def').func('k_solid_bulk_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('k_solid_bulk_1').set('pieces', {'0.0' '14.0' '3895.7*T^1+203.42*T^2-56.434*T^3+2.0664*T^4';  ...
'14.0' '50.0' '49148.0-2950.9*T^1+63.175*T^2-0.46605*T^3';  ...
'50.0' '82.0' '15117.0-626.0*T^1+10.348*T^2-0.078676*T^3+2.2917E-4*T^4';  ...
'82.0' '297.0' '913.09-12.076*T^1+0.080875*T^2-2.3988E-4*T^3+2.6487E-7*T^4';  ...
'297.0' '933.0' '39.646+1.684*T^1-0.0054134*T^2+8.4313E-6*T^3-6.537E-9*T^4+2.002E-12*T^5'});
model.component('comp1').material('mat7').propertyGroup('def').func('res_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('res_solid_1').set('pieces', {'1.0' '19.5' '1.091612E-12-1.10726E-13*T^1+3.696901E-14*T^2-2.781934E-15*T^3+1.008733E-16*T^4';  ...
'19.5' '50.6' '-3.323487E-11+7.29041E-12*T^1-4.771551E-13*T^2+1.071535E-14*T^3';  ...
'50.6' '200.0' '1.044556E-10-3.988929E-11*T^1+1.061978E-12*T^2-2.337666E-15*T^3';  ...
'200.0' '933.0' '-1.037048E-8+1.451201E-10*T^1-8.192563E-14*T^2+6.619834E-17*T^3'});
model.component('comp1').material('mat7').propertyGroup('def').func('alpha_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('alpha_solid_1').set('pieces', {'20.0' '220.0' '1.371347E-5+7.808536E-8*T^1-2.568882E-10*T^2+3.615726E-13*T^3'; '220.0' '610.0' '5.760185E-6+1.707141E-7*T^1-6.548135E-10*T^2+1.220625E-12*T^3-1.064883E-15*T^4+3.535918E-19*T^5'; '610.0' '933.0' '1.9495E-5+9.630182E-9*T^1+9.462013E-13*T^2'});
model.component('comp1').material('mat7').propertyGroup('def').func('C_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('C_solid_1').set('pieces', {'100.0' '320.0' '-290.4161+11.181*T^1-0.04125401*T^2+7.112754E-5*T^3-4.60822E-8*T^4'; '320.0' '933.0' '595.6585+1.513029*T^1-0.002070065*T^2+1.303608E-6*T^3'});
model.component('comp1').material('mat7').propertyGroup('def').func('sigma_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('sigma_solid_1').set('pieces', {'1.0' '19.5' '1/(1.008733E-16*T^4-2.781934E-15*T^3+3.696901E-14*T^2-1.107260E-13*T+1.091612E-12)';  ...
'19.5' '50.6' '1/(1.071535E-14*T^3-4.771551E-13*T^2+7.290410E-12*T-3.323487E-11)';  ...
'50.6' '200.0' '1/(-2.337666E-15*T^3+1.061978E-12*T^2-3.988929E-11*T+1.0445563E-10)';  ...
'200.0' '933.0' '1/(6.619834E-17*T^3-8.192563E-14*T^2+1.451201E-10*T-1.037048E-08)'});
model.component('comp1').material('mat7').propertyGroup('def').func('HC_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('HC_solid_1').set('pieces', {'100.0' '320.0' '-7.835862+0.3016802*T^1-0.001113095*T^2+1.919128E-6*T^3-1.243367E-9*T^4'; '320.0' '933.0' '16.07176+0.04082379*T^1-5.585347E-5*T^2+3.517331E-8*T^3'});
model.component('comp1').material('mat7').propertyGroup('def').func('VP_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('VP_solid_1').set('pieces', {'293.0' '933.0' '(exp((-1.734200e+04/T-7.927000e-01*log10(T)+1.233981e+01)*log(10.0)))*1.333200e+02'});
model.component('comp1').material('mat7').propertyGroup('def').func('rho_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('def').func('rho_solid_1').set('pieces', {'20.0' '130.0' '2734.317-0.02751647*T^1+0.001016054*T^2-1.700864E-5*T^3+5.734155E-8*T^4'; '130.0' '933.0' '2736.893-0.006011681*T^1-7.012444E-4*T^2+1.3582E-6*T^3-1.367828E-9*T^4+5.177991E-13*T^5'});
model.component('comp1').material('mat7').propertyGroup('def').set('thermalconductivity', {'k_solid_bulk_1(T[1/K])[W/(m*K)]' '0' '0' '0' 'k_solid_bulk_1(T[1/K])[W/(m*K)]' '0' '0' '0' 'k_solid_bulk_1(T[1/K])[W/(m*K)]'});
model.component('comp1').material('mat7').propertyGroup('def').set('resistivity', {'res_solid_1(T[1/K])[ohm*m]' '0' '0' '0' 'res_solid_1(T[1/K])[ohm*m]' '0' '0' '0' 'res_solid_1(T[1/K])[ohm*m]'});
model.component('comp1').material('mat7').propertyGroup('def').set('thermalexpansioncoefficient', {'(alpha_solid_1(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T[1/K])[1/K]-alpha_solid_1(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_solid_1(T[1/K])[1/K],T)))/(1+alpha_solid_1(Tempref[1/K])[1/K]*(Tempref-293[K]))' '0' '0' '0' '(alpha_solid_1(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T[1/K])[1/K]-alpha_solid_1(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_solid_1(T[1/K])[1/K],T)))/(1+alpha_solid_1(Tempref[1/K])[1/K]*(Tempref-293[K]))' '0' '0' '0' '(alpha_solid_1(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_solid_1(T[1/K])[1/K]-alpha_solid_1(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_solid_1(T[1/K])[1/K],T)))/(1+alpha_solid_1(Tempref[1/K])[1/K]*(Tempref-293[K]))'});
model.component('comp1').material('mat7').propertyGroup('def').set('heatcapacity', 'C_solid_1(T[1/K])[J/(kg*K)]');
model.component('comp1').material('mat7').propertyGroup('def').set('electricconductivity', {'sigma_solid_1(T[1/K])[S/m]' '0' '0' '0' 'sigma_solid_1(T[1/K])[S/m]' '0' '0' '0' 'sigma_solid_1(T[1/K])[S/m]'});
model.component('comp1').material('mat7').propertyGroup('def').set('HC', 'HC_solid_1(T[1/K])[J/(mol*K)]');
model.component('comp1').material('mat7').propertyGroup('def').set('VP', 'VP_solid_1(T[1/K])[Pa]');
model.component('comp1').material('mat7').propertyGroup('def').set('density', 'rho_solid_1(T[1/K])[kg/m^3]');
model.component('comp1').material('mat7').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat7').propertyGroup('def').set('relpermittivity', {'1.7' '0' '0' '0' '1.7' '0' '0' '0' '1.7'});
model.component('comp1').material('mat7').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat7').propertyGroup('def').addInput('strainreferencetemperature');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').func('dL_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').func('dL_solid_1').set('pieces', {'20.0' '188.0' '-0.004116601-4.000347E-6*T^1+5.370388E-8*T^2+3.714324E-10*T^3-1.45073E-12*T^4'; '188.0' '933.0' '-0.006312089+2.156284E-5*T^1-4.744254E-9*T^2+1.811015E-11*T^3-7.336673E-15*T^4'});
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').func('CTE_solid_1').set('pieces', {'20.0' '79.0' '-3.317274E-6+3.068688E-7*T^1-1.004816E-8*T^2+1.724768E-10*T^3-8.846061E-13*T^4'; '79.0' '230.0' '-2.288239E-5+6.674915E-7*T^1-4.402622E-9*T^2+1.455358E-11*T^3-1.910622E-14*T^4'; '230.0' '900.0' '1.243109E-5+5.050772E-8*T^1-5.806556E-11*T^2+3.014305E-14*T^3'});
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('alphatan', '');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('dL', '');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('alphatanIso', '');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('dLIso', '');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('alphatan', {'CTE_solid_1(T[1/K])[1/K]' '0' '0' '0' 'CTE_solid_1(T[1/K])[1/K]' '0' '0' '0' 'CTE_solid_1(T[1/K])[1/K]'});
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('dL', {'(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))' '0' '0' '0' '(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))' '0' '0' '0' '(dL_solid_1(T[1/K])-dL_solid_1(Tempref[1/K]))/(1+dL_solid_1(Tempref[1/K]))'});
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('alphatanIso', 'CTE_solid_1(T)');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').set('dLIso', '(dL_solid_1(T)-dL_solid_1(Tempref))/(1+dL_solid_1(Tempref))');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').addInput('temperature');
model.component('comp1').material('mat7').propertyGroup('ThermalExpansion').addInput('strainreferencetemperature');
model.component('comp1').material('mat7').propertyGroup('Enu').func('E').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('Enu').func('E').set('pieces', {'0.0' '773.0' '7.659324E10+2007396.0*T^1-186458.4*T^2+419.2175*T^3-0.3495083*T^4'});
model.component('comp1').material('mat7').propertyGroup('Enu').func('nu').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('Enu').func('nu').set('pieces', {'0.0' '773.0' '0.3238668+3.754548E-6*T^1+2.213647E-7*T^2-6.565023E-10*T^3+4.21277E-13*T^4+3.170505E-16*T^5'});
model.component('comp1').material('mat7').propertyGroup('Enu').set('youngsmodulus', 'E(T[1/K])[Pa]');
model.component('comp1').material('mat7').propertyGroup('Enu').set('poissonsratio', 'nu(T[1/K])');
model.component('comp1').material('mat7').propertyGroup('Enu').addInput('temperature');
model.component('comp1').material('mat7').propertyGroup('KG').func('mu').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('KG').func('mu').set('pieces', {'0.0' '773.0' '2.894653E10-120032.4*T^1-69037.36*T^2+158.6722*T^3-0.1348974*T^4'});
model.component('comp1').material('mat7').propertyGroup('KG').func('kappa').set('arg', 'T');
model.component('comp1').material('mat7').propertyGroup('KG').func('kappa').set('pieces', {'0.0' '773.0' '7.252413E10+1872882.0*T^1-71106.44*T^2+52.7109*T^3'});
model.component('comp1').material('mat7').propertyGroup('KG').set('K', '');
model.component('comp1').material('mat7').propertyGroup('KG').set('G', '');
model.component('comp1').material('mat7').propertyGroup('KG').set('K', 'kappa(T[1/K])[Pa]');
model.component('comp1').material('mat7').propertyGroup('KG').set('G', 'mu(T[1/K])[Pa]');
model.component('comp1').material('mat7').propertyGroup('KG').addInput('temperature');
model.component('comp1').material('mat8').label('Fe3O4 [solid]');
model.component('comp1').material('mat8').set('info', {[native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ] '' '72.4 Fe, 27.6 O (wt%)'});
model.component('comp1').material('mat8').propertyGroup('def').func('alpha').set('arg', 'T');
model.component('comp1').material('mat8').propertyGroup('def').func('alpha').set('pieces', {'73.0' '873.0' '4.187483E-6+1.382338E-8*T^1-1.705112E-11*T^2+1.751289E-14*T^3'; '873.0' '1773.0' '2.34148E-5-1.546328E-8*T^1+6.541098E-12*T^2'});
model.component('comp1').material('mat8').propertyGroup('def').func('C').set('arg', 'T');
model.component('comp1').material('mat8').propertyGroup('def').func('C').set('pieces', {'293.0' '800.0' '-222.2502+4.968374*T^1-0.008486821*T^2+5.526817E-6*T^3'; '800.0' '850.0' '17171.06-44.7501*T^1+0.03090692*T^2'; '850.0' '1800.0' '3786.018-7.13436*T^1+0.006448548*T^2-2.606241E-6*T^3+4.053976E-10*T^4'});
model.component('comp1').material('mat8').propertyGroup('def').func('HC').set('arg', 'T');
model.component('comp1').material('mat8').propertyGroup('def').func('HC').set('pieces', {'293.0' '800.0' '-51.45872+1.150353*T^1-0.001964996*T^2+1.279652E-6*T^3'; '800.0' '850.0' '3975.702-10.36122*T^1+0.007156033*T^2'; '850.0' '1800.0' '876.5957-1.651854*T^1+0.001493065*T^2-6.034357E-7*T^3+9.386373E-11*T^4'});
model.component('comp1').material('mat8').propertyGroup('def').func('rho').set('arg', 'T');
model.component('comp1').material('mat8').propertyGroup('def').func('rho').set('pieces', {'73.0' '873.0' '5173.117-0.06998344*T^1+1.253962E-5*T^2-1.537577E-7*T^3'; '873.0' '1773.0' '5063.961+0.04492804*T^1-1.105502E-4*T^2'});
model.component('comp1').material('mat8').propertyGroup('def').set('thermalexpansioncoefficient', {'(alpha(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha(T[1/K])[1/K]-alpha(Tempref[1/K])[1/K])/(T-Tempref),d(alpha(T[1/K])[1/K],T)))/(1+alpha(Tempref[1/K])[1/K]*(Tempref-293[K]))' '0' '0' '0' '(alpha(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha(T[1/K])[1/K]-alpha(Tempref[1/K])[1/K])/(T-Tempref),d(alpha(T[1/K])[1/K],T)))/(1+alpha(Tempref[1/K])[1/K]*(Tempref-293[K]))' '0' '0' '0' '(alpha(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha(T[1/K])[1/K]-alpha(Tempref[1/K])[1/K])/(T-Tempref),d(alpha(T[1/K])[1/K],T)))/(1+alpha(Tempref[1/K])[1/K]*(Tempref-293[K]))'});
model.component('comp1').material('mat8').propertyGroup('def').set('heatcapacity', 'C(T[1/K])[J/(kg*K)]');
model.component('comp1').material('mat8').propertyGroup('def').set('HC', 'HC(T[1/K])[J/(mol*K)]');
model.component('comp1').material('mat8').propertyGroup('def').set('density', 'rho(T[1/K])[kg/m^3]');
model.component('comp1').material('mat8').propertyGroup('def').set('relpermeability', {'1.12' '0' '0' '0' '1.12' '0' '0' '0' '1.12'});
model.component('comp1').material('mat8').propertyGroup('def').set('electricconductivity', {'0.06' '0' '0' '0' '0.06' '0' '0' '0' '0.06'});
model.component('comp1').material('mat8').propertyGroup('def').set('relpermittivity', {'15' '0' '0' '0' '15' '0' '0' '0' '15'});
model.component('comp1').material('mat8').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat8').propertyGroup('def').addInput('strainreferencetemperature');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').func('dL').set('arg', 'T');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').func('dL').set('pieces', {'73.0' '873.0' '-0.001226932+1.37232E-7*T^1+1.881936E-8*T^2-2.21824E-11*T^3+1.751289E-14*T^4'; '873.0' '1773.0' '0.006407643-4.580849E-6*T^1+8.180222E-9*T^2'});
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').set('alphatan', '');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').set('dL', '');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').set('alphatanIso', '');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').set('dLIso', '');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').set('dL', {'(dL(T[1/K])-dL(Tempref[1/K]))/(1+dL(Tempref[1/K]))' '0' '0' '0' '(dL(T[1/K])-dL(Tempref[1/K]))/(1+dL(Tempref[1/K]))' '0' '0' '0' '(dL(T[1/K])-dL(Tempref[1/K]))/(1+dL(Tempref[1/K]))'});
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').set('dLIso', '(dL(T)-dL(Tempref))/(1+dL(Tempref))');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').addInput('temperature');
model.component('comp1').material('mat8').propertyGroup('ThermalExpansion').addInput('strainreferencetemperature');
model.component('comp1').material('mat10').label('H2O (water) [liquid]');
model.component('comp1').material('mat10').set('info', {[native2unicode(hex2dec({'54' '08'}), 'unicode')  native2unicode(hex2dec({'62' '10'}), 'unicode')  native2unicode(hex2dec({'72' '69'}), 'unicode') ] '' '11.2 H, 88.8 O (wt%)'});
model.component('comp1').material('mat10').propertyGroup('def').func('k_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('k_liquid_2').set('pieces', {'275.0' '370.0' '-0.9003748+0.008387698*T^1-1.118205E-5*T^2'});
model.component('comp1').material('mat10').propertyGroup('def').func('alpha_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('alpha_liquid_2').set('pieces', {'273.0' '283.0' '0.01032507-7.62815E-5*T^1+1.412474E-7*T^2'; '283.0' '373.0' '-0.002464185+1.947611E-5*T^1-5.049672E-8*T^2+4.616995E-11*T^3'});
model.component('comp1').material('mat10').propertyGroup('def').func('C_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('C_liquid_2').set('pieces', {'293.0' '373.0' '4035.841+0.492312*T^1'});
model.component('comp1').material('mat10').propertyGroup('def').func('HC_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('HC_liquid_2').set('pieces', {'293.0' '373.0' '72.64512+0.008861616*T^1'});
model.component('comp1').material('mat10').propertyGroup('def').func('VP_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('VP_liquid_2').set('pieces', {'280.0' '600.0' '(exp((-2.005122e+03/T-5.565700e-01*log10(T)+9.898790e+00-1.111690e+07/T^3)*log(10.0)))*1.333200e+02'});
model.component('comp1').material('mat10').propertyGroup('def').func('rho_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('rho_liquid_2').set('pieces', {'273.0' '283.0' '972.7584+0.2084*T^1-4.0E-4*T^2'; '283.0' '373.0' '345.28+5.749816*T^1-0.0157244*T^2+1.264375E-5*T^3'});
model.component('comp1').material('mat10').propertyGroup('def').func('TD_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('TD_liquid_2').set('pieces', {'273.0' '333.0' '8.04E-8+2.0E-10*T^1'});
model.component('comp1').material('mat10').propertyGroup('def').func('eta_liquid_1').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('def').func('eta_liquid_1').set('pieces', {'265.0' '293.0' '5.948859-0.08236196*T^1+4.287142E-4*T^2-9.938045E-7*T^3+8.65316E-10*T^4'; '293.0' '353.0' '0.410191-0.004753985*T^1+2.079795E-5*T^2-4.061698E-8*T^3+2.983925E-11*T^4'; '353.0' '423.0' '0.03625638-3.265463E-4*T^1+1.127139E-6*T^2-1.75363E-9*T^3+1.033976E-12*T^4'});
model.component('comp1').material('mat10').propertyGroup('def').set('thermalconductivity', {'k_liquid_2(T[1/K])[W/(m*K)]' '0' '0' '0' 'k_liquid_2(T[1/K])[W/(m*K)]' '0' '0' '0' 'k_liquid_2(T[1/K])[W/(m*K)]'});
model.component('comp1').material('mat10').propertyGroup('def').set('thermalexpansioncoefficient', {'(alpha_liquid_2(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_liquid_2(T[1/K])[1/K]-alpha_liquid_2(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_liquid_2(T[1/K])[1/K],T)))/(1+alpha_liquid_2(Tempref[1/K])[1/K]*(Tempref-293[K]))' '0' '0' '0' '(alpha_liquid_2(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_liquid_2(T[1/K])[1/K]-alpha_liquid_2(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_liquid_2(T[1/K])[1/K],T)))/(1+alpha_liquid_2(Tempref[1/K])[1/K]*(Tempref-293[K]))' '0' '0' '0' '(alpha_liquid_2(T[1/K])[1/K]+(Tempref-293[K])*if(abs(T-Tempref)>1e-3,(alpha_liquid_2(T[1/K])[1/K]-alpha_liquid_2(Tempref[1/K])[1/K])/(T-Tempref),d(alpha_liquid_2(T[1/K])[1/K],T)))/(1+alpha_liquid_2(Tempref[1/K])[1/K]*(Tempref-293[K]))'});
model.component('comp1').material('mat10').propertyGroup('def').set('heatcapacity', 'C_liquid_2(T[1/K])[J/(kg*K)]');
model.component('comp1').material('mat10').propertyGroup('def').set('HC', 'HC_liquid_2(T[1/K])[J/(mol*K)]');
model.component('comp1').material('mat10').propertyGroup('def').set('VP', 'VP_liquid_2(T[1/K])[Pa]');
model.component('comp1').material('mat10').propertyGroup('def').set('density', 'rho_liquid_2(T[1/K])[kg/m^3]');
model.component('comp1').material('mat10').propertyGroup('def').set('TD', 'TD_liquid_2(T[1/K])[m^2/s]');
model.component('comp1').material('mat10').propertyGroup('def').set('dynamicviscosity', 'eta_liquid_1(T[1/K])[Pa*s]');
model.component('comp1').material('mat10').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat10').propertyGroup('def').set('electricconductivity', {'0.0028' '0' '0' '0' '0.0028' '0' '0' '0' '0.0028'});
model.component('comp1').material('mat10').propertyGroup('def').set('relpermittivity', {'80' '0' '0' '0' '80' '0' '0' '0' '80'});
model.component('comp1').material('mat10').propertyGroup('def').addInput('temperature');
model.component('comp1').material('mat10').propertyGroup('def').addInput('strainreferencetemperature');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').func('dL_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').func('dL_liquid_2').set('pieces', {'273.0' '283.0' '0.008486158-6.947021E-5*T^1+1.333373E-7*T^2'; '283.0' '373.0' '0.2324466-0.002030447*T^1+5.510259E-6*T^2-4.395999E-9*T^3'});
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').func('CTE_liquid_2').set('arg', 'T');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').func('CTE_liquid_2').set('pieces', {'273.0' '283.0' '-6.947321E-5+2.666746E-7*T^1'; '283.0' '293.0' '-0.01363715+8.893977E-5*T^1-1.43925E-7*T^2'; '293.0' '373.0' '-0.00203045+1.102052E-5*T^1-1.3188E-8*T^2'});
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('alphatan', '');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('dL', '');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('alphatanIso', '');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('dLIso', '');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('alphatan', {'CTE_liquid_2(T[1/K])[1/K]' '0' '0' '0' 'CTE_liquid_2(T[1/K])[1/K]' '0' '0' '0' 'CTE_liquid_2(T[1/K])[1/K]'});
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('dL', {'(dL_liquid_2(T[1/K])-dL_liquid_2(Tempref[1/K]))/(1+dL_liquid_2(Tempref[1/K]))' '0' '0' '0' '(dL_liquid_2(T[1/K])-dL_liquid_2(Tempref[1/K]))/(1+dL_liquid_2(Tempref[1/K]))' '0' '0' '0' '(dL_liquid_2(T[1/K])-dL_liquid_2(Tempref[1/K]))/(1+dL_liquid_2(Tempref[1/K]))'});
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('alphatanIso', 'CTE_liquid_2(T)');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').set('dLIso', '(dL_liquid_2(T)-dL_liquid_2(Tempref))/(1+dL_liquid_2(Tempref))');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').addInput('temperature');
model.component('comp1').material('mat10').propertyGroup('ThermalExpansion').addInput('strainreferencetemperature');
model.component('comp1').material('mat9').propertyGroup('def').set('relpermeability', {'1' '0' '0' '0' '1' '0' '0' '0' '1'});
model.component('comp1').material('mat9').propertyGroup('def').set('relpermittivity', {'1+3*im1(x,y)' '0' '0' '0' '1+3*im1(x,y)' '0' '0' '0' '1+3*im1(x,y)'});
model.component('comp1').material('mat9').propertyGroup('def').set('electricconductivity', {'0.06*im1(x,y)' '0' '0' '0' '0.06*im1(x,y)' '0' '0' '0' '0.06*im1(x,y)'});
model.component('comp1').material('mat9').materialType('nonSolid');

model.component('comp1').physics('mf').feature('al1').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil1').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil1').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil1').set('N', 15);
model.component('comp1').physics('mf').feature('coil1').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil2').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil2').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil2').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil2').set('N', 15);
model.component('comp1').physics('mf').feature('coil2').set('materialType', 'solid');
model.component('comp1').physics('mf').feature('coil2').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil3').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil3').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil3').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil3').set('N', 15);
model.component('comp1').physics('mf').feature('coil3').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil4').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil4').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil4').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil4').set('N', 15);
model.component('comp1').physics('mf').feature('coil4').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil5').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil5').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil5').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil5').set('N', 15);
model.component('comp1').physics('mf').feature('coil5').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil6').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil6').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil6').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil6').set('N', 15);
model.component('comp1').physics('mf').feature('coil6').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil7').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil7').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil7').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil7').set('N', 15);
model.component('comp1').physics('mf').feature('coil7').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil8').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil8').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil8').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil8').set('N', 15);
model.component('comp1').physics('mf').feature('coil8').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil9').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil9').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil9').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil9').set('N', 15);
model.component('comp1').physics('mf').feature('coil9').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil10').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil10').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil10').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil10').set('N', 15);
model.component('comp1').physics('mf').feature('coil10').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil11').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil11').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil11').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil11').set('N', 15);
model.component('comp1').physics('mf').feature('coil11').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil12').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil12').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil12').set('ICoil', '0[A]');
model.component('comp1').physics('mf').feature('coil12').set('N', 15);
model.component('comp1').physics('mf').feature('coil12').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('es').active(false);
model.component('comp1').physics('es').feature('term1').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term1').set('V0', 0);
model.component('comp1').physics('es').feature('term2').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term2').set('V0', 0);
model.component('comp1').physics('es').feature('term3').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term3').set('V0', 0);
model.component('comp1').physics('es').feature('term4').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term4').set('V0', 5);
model.component('comp1').physics('es').feature('term5').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term5').set('V0', 0);
model.component('comp1').physics('es').feature('term6').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term6').set('V0', 0);
model.component('comp1').physics('es').feature('term7').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term7').set('V0', 0);
model.component('comp1').physics('es').feature('term8').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term8').set('V0', 0);
model.component('comp1').physics('es').feature('term9').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term9').set('V0', 0);
model.component('comp1').physics('es').feature('term10').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term10').set('V0', 0);
model.component('comp1').physics('es').feature('term11').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term11').set('V0', 0);
model.component('comp1').physics('es').feature('term12').set('TerminalType', 'Voltage');
model.component('comp1').physics('es').feature('term12').set('V0', 0);
model.component('comp1').physics('es').feature('ccn2').set('epsilonr', {'1+im1(x,y)'; '0'; '0'; '0'; '1+im1(x,y)'; '0'; '0'; '0'; '1+im1(x,y)'});
model.component('comp1').physics('es').feature('ccn2').set('epsilonr_mat', 'userdef');

model.component('comp1').physics('mf').feature('al1').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil1').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil1').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil1').set('ICoil', c{1,1});
model.component('comp1').physics('mf').feature('coil1').set('N', 15);
model.component('comp1').physics('mf').feature('coil1').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil2').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil2').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil2').set('ICoil',c{1,2});
model.component('comp1').physics('mf').feature('coil2').set('N', 15);
model.component('comp1').physics('mf').feature('coil2').set('materialType', 'solid');
model.component('comp1').physics('mf').feature('coil2').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil3').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil3').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil3').set('ICoil', c{1,3});
model.component('comp1').physics('mf').feature('coil3').set('N', 15);
model.component('comp1').physics('mf').feature('coil3').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil4').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil4').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil4').set('ICoil',c{1,4});
model.component('comp1').physics('mf').feature('coil4').set('N', 15);
model.component('comp1').physics('mf').feature('coil4').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil5').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil5').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil5').set('ICoil',c{1,5});
model.component('comp1').physics('mf').feature('coil5').set('N', 15);
model.component('comp1').physics('mf').feature('coil5').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil6').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil6').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil6').set('ICoil', c{1,6});
model.component('comp1').physics('mf').feature('coil6').set('N', 15);
model.component('comp1').physics('mf').feature('coil6').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil7').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil7').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil7').set('ICoil', c{1,7});
model.component('comp1').physics('mf').feature('coil7').set('N', 15);
model.component('comp1').physics('mf').feature('coil7').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil8').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil8').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil8').set('ICoil', c{1,8});
model.component('comp1').physics('mf').feature('coil8').set('N', 15);
model.component('comp1').physics('mf').feature('coil8').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil9').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil9').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil9').set('ICoil', c{1,9});
model.component('comp1').physics('mf').feature('coil9').set('N', 15);
model.component('comp1').physics('mf').feature('coil9').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil10').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil10').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil10').set('ICoil',c{1,10});
model.component('comp1').physics('mf').feature('coil10').set('N', 15);
model.component('comp1').physics('mf').feature('coil10').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil11').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil11').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil11').set('ICoil', c{1,11});
model.component('comp1').physics('mf').feature('coil11').set('N', 15);
model.component('comp1').physics('mf').feature('coil11').set('AllowDeprecatedCurves', true);
model.component('comp1').physics('mf').feature('coil12').set('ConductorModel', 'Multi');
model.component('comp1').physics('mf').feature('coil12').set('coilGroup', true);
model.component('comp1').physics('mf').feature('coil12').set('ICoil', c{1,12});
model.component('comp1').physics('mf').feature('coil12').set('N', 15);
model.component('comp1').physics('mf').feature('coil12').set('AllowDeprecatedCurves', true);

model.component('comp1').physics('es').active(false);
model.component('comp1').physics('mf').active(true);

model.study.create('std1');
model.study('std1').create('freq', 'Frequency');

model.sol.create('sol1');
model.sol('sol1').study('std1');
model.sol('sol1').attach('std1');
model.sol('sol1').create('st1', 'StudyStep');
model.sol('sol1').create('v1', 'Variables');
model.sol('sol1').create('s1', 'Stationary');
model.sol('sol1').feature('s1').create('p1', 'Parametric');
model.sol('sol1').feature('s1').create('fc1', 'FullyCoupled');
model.sol('sol1').feature('s1').feature.remove('fcDef');

model.result.create('pg2', 'PlotGroup1D');
model.result.create('pg3', 'PlotGroup2D');
model.result('pg2').create('tblp1', 'Table');
model.result('pg3').create('surf1', 'Surface');
model.result('pg3').create('con1', 'Contour');

model.study('std1').feature('freq').set('punit', 'kHz');
model.study('std1').feature('freq').setIndex('plist', '10', 0);

model.sol('sol1').attach('std1');
model.sol('sol1').feature('v1').set('clistctrl', {'p1'});
model.sol('sol1').feature('v1').set('cname', {'freq'});
model.sol('sol1').feature('v1').set('clist', {'10[kHz]'});
model.sol('sol1').feature('s1').feature('p1').set('pname', {'freq'});
model.sol('sol1').feature('s1').feature('p1').set('plistarr', [10]);
model.sol('sol1').feature('s1').feature('p1').set('punit', {'kHz'});
model.sol('sol1').feature('s1').feature('p1').set('pcontinuationmode', 'no');
model.sol('sol1').feature('s1').feature('p1').set('preusesol', 'auto');
model.sol('sol1').runAll;

model.result('pg2').set('data', 'none');
model.result('pg2').feature('tblp1').set('source', 'evaluationgroup');
model.result('pg3').label([native2unicode(hex2dec({'78' 'c1'}), 'unicode')  native2unicode(hex2dec({'90' '1a'}), 'unicode')  native2unicode(hex2dec({'5b' 'c6'}), 'unicode')  native2unicode(hex2dec({'5e' 'a6'}), 'unicode')  native2unicode(hex2dec({'6a' '21'}), 'unicode') ' (mf)']);
model.result('pg3').feature('surf1').set('expr', 'mf.sigmaxx');
model.result('pg3').feature('surf1').set('unit', 'S/m');
model.result('pg3').feature('surf1').set('descr', [native2unicode(hex2dec({'75' '35'}), 'unicode')  native2unicode(hex2dec({'5b' 'fc'}), 'unicode')  native2unicode(hex2dec({'73' '87'}), 'unicode')  native2unicode(hex2dec({'ff' '0c'}), 'unicode') 'xx ' native2unicode(hex2dec({'52' '06'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ]);
model.result('pg3').feature('surf1').set('colortable', 'RainbowLight');
model.result('pg3').feature('surf1').set('resolution', 'normal');
model.result('pg3').feature('con1').set('expr', 'mf.Az');
model.result('pg3').feature('con1').set('unit', 'Wb/m');
model.result('pg3').feature('con1').set('descr', [native2unicode(hex2dec({'77' 'e2'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode')  native2unicode(hex2dec({'78' 'c1'}), 'unicode')  native2unicode(hex2dec({'52' 'bf'}), 'unicode')  native2unicode(hex2dec({'ff' '0c'}), 'unicode') 'z ' native2unicode(hex2dec({'52' '06'}), 'unicode')  native2unicode(hex2dec({'91' 'cf'}), 'unicode') ]);
model.result('pg3').feature('con1').set('titletype', 'none');
model.result('pg3').feature('con1').set('number', 15);
model.result('pg3').feature('con1').set('coloring', 'uniform');
model.result('pg3').feature('con1').set('colorlegend', false);
model.result('pg3').feature('con1').set('color', 'gray');
model.result('pg3').feature('con1').set('resolution', 'normal');

%out = model;
